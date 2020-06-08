#!/bin/bash

###########################################################################
#                                                                         #
# Author: Daniele Rondina, geaaru@gmail.com                               #
# Version: 1.0                                                            #
# Description: Script for start Karaf on openrc or systemd environment.   #
#                                                                         #
###########################################################################

conffile=/etc/default/karaf.conf
karaf_default_log_dir=/var/log/karaf
TMP_START_SCRIPT=/tmp/karaf.sh

# Source of configuration file
if [ -e "$conffile" ] ; then
  .  $conffile
else
  echo "Missing configuration file at path $conffile."
  exit 1
fi

error () {

    echo $@

    return 0
}

init_env_vars () {

    KARAF_ARGS=""

    # Check karaf home directory
    if [ x"${karaf_home_dir}" == x ] ; then
        error "You need to set karaf_home_dir on configure file" && exit 1
    else
        if [ ! -d "${karaf_home_dir}" ] ; then
            error "Invalid directory for karaf_home_dir: ${karaf_home_dir}" && exit 1
        fi
    fi

    KARAF_ARGS="$KARAF_ARGS -Dkaraf.home=${karaf_home_dir}"

    # Check Karaf Base directory
    if [ x"${karaf_base_dir}" != x ] ; then
        if [ ! -d "${karaf_base_dir}" ] ; then
             error "Invalid directory for karaf_base_dir: ${karaf_base_dir}" && exit 1
        fi

        KARAF_ARGS="$KARAF_ARGS -Dkaraf.base=${karaf_base_dir}"
    else
        KARAF_ARGS="$KARAF_ARGS -Dkaraf.base=${karaf_home_dir}"
    fi

    # Check Karaf Data directory
    if [ x"${karaf_data_dir}" != x ] ; then
        if [ ! -d "${karaf_data_dir}" ] ; then
            error "Invalid directory for karaf_data_dir: ${karaf_data_dir}" && exit 1
        fi
        KARAF_DATA="${karaf_data_dir}"
        KARAF_ARGS="$KARAF_ARGS -Dkaraf.data=${karaf_data_dir}"
    else
        KARAF_DATA="${karaf_home_dir}/data"
        KARAF_ARGS="$KARAF_ARGS -Dkaraf.data=${karaf_home_dir}/data"
    fi

    # Check Karaf Log directory
    if [ x"${karaf_log_dir}" != x ] ; then
        if [ ! -d "${karaf_log_dir}" ] ; then
            error "Invalid directory for karaf_log_dir: ${karaf_log_dir}" && exit 1
        fi
        KARAF_ARGS="$KARAF_ARGS -Dkaraf.log=${karaf_log_dir}"
    else
        KARAF_ARGS="$KARAF_ARGS -Dkaraf.log=${karaf_default_log_dir}"
    fi

    # Check Karaf instances directory
    if [ x"${karaf_instances_dir}" != x ] ; then
        if [ ! -d "${karaf_instances_dir}" ] ; then
            error "Invalid directory for karaf_instances_dir: ${karaf_instances_dir}"  && exit 1
        fi
        KARAF_ARGS="$KARAF_ARGS -Dkaraf.instances=${karaf_instances_dir}"
    else
        KARAF_ARGS="$KARAF_ARGS -Dkaraf.instances=${karaf_home_dir}/instances"
    fi

    # Check Karaf etc directory
    if [ x"${karaf_etc_dir}" != x ] ; then
        if [ ! -d "${karaf_etc_dir}" ] ; then
            error "Invalid directory for karaf_etc_dir: ${karaf_etc_dir}"  && exit 1
        fi
        KARAF_ARGS="$KARAF_ARGS -Dkaraf.etc=${karaf_etc_dir}"
    else
        KARAF_ARGS="$KARAF_ARGS -Dkaraf.etc=${karaf_home_dir}/etc"
    fi

    # Check Karaf logging property file
    if [ x"${logging_prop_file}" != x ] ; then
        if [ ! -e "${logging_prop_file}" ] ; then
            error "Invalid logging property file: ${logging_prop_file}" && exit 1
        fi
        KARAF_ARGS="$KARAF_ARGS -Djava.util.logging.config.file=${logging_prop_file}"
    else
        KARAF_ARGS="$KARAF_ARGS -Djava.util.logging.config.file=${karaf_home_dir}/etc/java.util.logging.properties"
    fi

    # Check for local karaf console
    if [[ x"${karaf_local_console}" == x || ${karaf_local_console} -ne 1 ]] ; then
        KARAF_ARGS="$KARAF_ARGS -Dkaraf.startLocalConsole=false"
    else
        KARAF_ARGS="$KARAF_ARGS -Dkaraf.startLocalConsole=true"
    fi

    # Check for remote karaf console
    if [[ x"${karaf_remote_console}" == x || ${karaf_remote_console} -ne 0 ]] ; then
        KARAF_ARGS="$KARAF_ARGS -Dkaraf.startRemoteShell=true"
    else
        KARAF_ARGS="$KARAF_ARGS -Dkaraf.startRemoteShell=false"
    fi

    # Populate JAVA_HOME
    if [ x"$java_home_dir" != x ]; then
        JAVA_HOME="$java_home_dir"
    else
        if [ -z "$JAVA_HOME" ] ; then
          echo "JAVA_HOME is not set or variable java_home_dir is not set."
          exit 1
        fi
    fi

    if [ x"$java_vm" != x ]; then
        JAVA="$java_vm"
    else
        JAVA="$JAVA_HOME/bin/java"
    fi

    AWK=/usr/bin/awk
    JAVA_VERSION=${JAVA_VERSION-$("${JAVA}" -version 2>&1 | ${AWK} -F '"' '/version/ {print $2}' | sed -e 's/_.*//g; s/^1\.//g; s/\..*//g; s/-.*//g;')}

    if [ -z "$JAVA_VERSION" ] ; then
        error "Error on retrieve java version" && exit 1
    fi

    # Check for java_xms_opt property
    if [ x"$java_xms_opt" != x ] ; then
        KARAF_ARGS="$KARAF_ARGS -Xms$java_xms_opt"
    else
        KARAF_ARGS="$KARAF_ARGS -Xms256m"
    fi

    # Check for java_xmx_opt property
    if [ x"$java_xmx_opt" != x ] ; then
        KARAF_ARGS="$KARAF_ARGS -Xmx$java_xmx_opt"
    else
        KARAF_ARGS="$KARAF_ARGS -Xmx512m"
    fi

    # Set temporary dir (TODO: Show if use systemd PrivateTmp)
    KARAF_ARGS="$KARAF_ARGS -Djava.io.tmpdir=${KARAF_DATA}/tmp"

    KARAF_ARGS="$KARAF_ARGS  -Dkaraf.restart.jvm.supported=true"

    if [ "$JAVA_VERSION" -gt "8" ] ; then

      # POST: java_version > 8

      KARAF_ARGS="$KARAF_ARGS --add-reads=java.xml=java.logging"
      KARAF_ARGS="$KARAF_ARGS --add-exports=java.base/org.apache.karaf.specs.locator=java.xml,ALL-UNNAMED"

      KARAF_ARGS="$KARAF_ARGS --patch-module java.base=lib/endorsed/org.apache.karaf.specs.locator-${karaf_version}.jar"
      KARAF_ARGS="$KARAF_ARGS --patch-module java.xml=lib/endorsed/org.apache.karaf.specs.java.xml-${karaf_version}.jar"

      KARAF_ARGS="$KARAF_ARGS --add-opens java.base/java.security=ALL-UNNAMED"
      KARAF_ARGS="$KARAF_ARGS --add-opens java.base/java.net=ALL-UNNAMED"
      KARAF_ARGS="$KARAF_ARGS --add-opens java.base/java.lang=ALL-UNNAMED"
      KARAF_ARGS="$KARAF_ARGS --add-opens java.base/java.util=ALL-UNNAMED"
      KARAF_ARGS="$KARAF_ARGS --add-opens java.naming/javax.naming.spi=ALL-UNNAMED"
      KARAF_ARGS="$KARAF_ARGS --add-opens java.rmi/sun.rmi.transport.tcp=ALL-UNNAMED"

      KARAF_ARGS="$KARAF_ARGS --add-exports=java.base/sun.net.www.protocol.http=ALL-UNNAMED"
      KARAF_ARGS="$KARAF_ARGS --add-exports=java.base/sun.net.www.protocol.https=ALL-UNNAMED"
      KARAF_ARGS="$KARAF_ARGS --add-exports=java.base/sun.net.www.protocol.jar=ALL-UNNAMED"
      KARAF_ARGS="$KARAF_ARGS --add-exports=jdk.xml.dom/org.w3c.dom.html=ALL-UNNAMED"
      KARAF_ARGS="$KARAF_ARGS --add-exports=jdk.naming.rmi/com.sun.jndi.url.rmi=ALL-UNNAMED"

    else

      if [ x"$java_dgc_client_gcInterval" != x ]; then
          KARAF_ARGS="$KARAF_ARGS -Dsun.rmi.dgc.client.gcInterval=$java_dgc_client_gcInterval"
      else
          KARAF_ARGS="$KARAF_ARGS -Dsun.rmi.dgc.client.gcInterval=3600000"
      fi

      if [ x"$java_dgc_server_gcInterval" != x ]; then
          KARAF_ARGS="$KARAF_ARGS -Dsun.rmi.dgc.server.gcInterval=$java_dgc_server_gcInterval"
      else
          KARAF_ARGS="$KARAF_ARGS -Dsun.rmi.dgc.server.gcInterval=3600000"
      fi

      if [ x"$java_endorsed_dirs" != x ]; then
          KARAF_ARGS="$KARAF_ARGS -Djava.endorsed.dirs=\"${JAVA_HOME}/jre/lib/endorsed:${JAVA_HOME}/lib/endorsed:$java_endorsed_dirs\""
      else
          KARAF_ARGS="$KARAF_ARGS -Djava.endorsed.dirs=\"${JAVA_HOME}/jre/lib/endorsed:${JAVA_HOME}/lib/endorsed:${karaf_home_dir}/lib/endorsed\""
      fi

      if [ x"$java_ext_dirs" != x ]; then
          KARAF_ARGS="$KARAF_ARGS -Djava.ext.dirs=\"${JAVA_HOME}/jre/lib/ext:${JAVA_HOME}/lib/ext:$java_ext_dirs\""
      else
          KARAF_ARGS="$KARAF_ARGS -Djava.ext.dirs=\"${JAVA_HOME}/jre/lib/ext:${JAVA_HOME}/lib/ext:${karaf_home_dir}/lib/ext\""
      fi

      KARAF_ARGS="$KARAF_ARGS -server"

    fi

    # Set SUN specific JVM flags
    KARAF_ARGS="$KARAF_ARGS -Dcom.sun.management.jmxremote"

    if [ x"$java_charset_opt" != x ]; then
        KARAF_ARGS="$KARAF_ARGS -Dfile.encoding=\"$java_charset_opt\""
    fi


    # Add the jars in the lib dir
    for file in ${karaf_home_dir}/lib/boot/*.jar
    do
        if [ -z "$CLASSPATH" ]; then
            CLASSPATH="$file"
        else
            CLASSPATH="$CLASSPATH:$file"
        fi
    done

    if [ "$JAVA_VERSION" -gt "8" ] ; then
      for file in ${karaf_home_dir}/lib/jdk9plus/*.jar
      do
          if [ -z "$CLASSPATH" ]; then
              CLASSPATH="$file"
          else
              CLASSPATH="$CLASSPATH:$file"
          fi
      done
    fi


    if [ x"$karaf_cp_append" != x ] ; then
        CLASSPATH="$CLASSPATH:$karaf_cp_append"
    fi

    if [ x"$java_options" != x ] ; then
        KARAF_ARGS="$KARAF_ARGS $java_options"
    fi

    # Check if it is needed enable debug
    if [[ x"$karaf_debug_flag" != x && $karaf_debug_flag -eq 1 ]] ; then

        local debug_args="-Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,server=y,suspend=n"

        if [ -x"$karaf_debug_port" == x ] ; then
            karaf_debug_port="5005"
        fi

        debug_args="${debug_args},address=$karaf_debug_port"

        KARAF_ARGS="$KARAF_ARGS $debug_args"

    fi

    # Check for pidfile
    if [ x"$karaf_pidfile" != x ] ; then
        KARAF_PIDFILE=$karaf_pidfile
    else
        KARAF_PIDFILE=${karaf_home_dir}/karaf.pid
    fi

    if [[ x"$sysinit_type" != x && $sysinit_type = "systemv" ]] ; then

        KARAF_SYSTEMD_ENV=0

        local MAX_FD=""
        if [ $? -eq 0 ]; then
            if [ x"$max_fd" != x ]; then
                if [ "$max_fd" = "maximum" ]; then
                    MAX_FD="$MAX_FD_LIMIT"
                else
                    MAX_FD="$max_fd"
                fi
                ulimit -n $MAX_FD
                if [ $? -ne 0 ]; then
                    echo "Could not set maximun file description limit: $MAX_FD"
                fi
            fi
        fi

        if [ x"$karaf_user" != x ]; then
            KARAF_USER="$karaf_user"
        else
            KARAF_USER="karaf"
        fi

        export KARAF_USER KARAF_GROUP

    else

        KARAF_SYSTEMD_ENV=1

    fi


    export KARAF_ARGS JAVA_HOME JAVA KARAF_SYSTEMD_ENV KARAF_PIDFILE

}

check_process_availability () {

    local pid=`cat $KARAF_PIDFILE`
    local ans=`ps ax | grep $pid | grep karaf.data | wc -l`

    return $ans
}

wait_karaf_shutdown () {

    local pid=`cat $KARAF_PIDFILE`

    local wait_shut=1
    local exists=1
    local sleep_sec=5
    local total_sec=0
    local i=0

    while [ $wait_shut -gt 0 ] ; do

        exists=`ps ax | grep $pid | grep karaf.data | wc -l`
        if [ $exists == 0 ] ; then
            wait_shut=0
            echo "Karaf is shutdown. Bye"
        else
            echo -n "Wait for shutdown (sleep 5 sec): "

            #for i in $(seq 0 $sleep_sec) do
            for ((i = 0; i < $sleep_sec; i++)) 
            do
                echo -n "."
                let total_sec++
                sleep 1
            done

            echo -e "\n"

            if [ $total_sec -gt 100 ] ; then
                echo "I don't want sleep again... i kill karaf"
                kill -9 $pid
                wait_shut=0

                exists=`ps ax | grep $pid | grep karaf.data | wc -l`
                if [ $exists == 0 ] ; then
                    echo "Now it is die!!"
                else
                    echo "Noooo. It is an highlander!!Power off you computer!"
                fi
            fi
        fi

    done
}

start () {

    local ans=1
    local exists_process=0
    local pidfile=""

    init_env_vars

    KARAF_BIN="org.apache.karaf.main.Main"

    if [ $KARAF_SYSTEMD_ENV -eq 1 ]; then

        echo "Starting Karaf Server inside systemd environment...."

        cd ${karaf_home_dir}

        #echo "$JAVA $KARAF_ARGS -classpath \"$CLASSPATH\" $KARAF_BIN &"

        #$JAVA $KARAF_ARGS -classpath "$CLASSPATH" $KARAF_BIN &
        eval "$JAVA $KARAF_ARGS -classpath \"$CLASSPATH\" $KARAF_BIN &"

        if [ $? -ne 0 ] ; then
            echo "Something goes wrong!!!"
            exit 1
        else
            # Pidfile write is needed is systemd .service
            # has PIDFile= option.
            #pidfile=$!
            #echo $pidfile > $KARAF_PIDFILE
            ans=0
        fi

    else

        if [ -e $KARAF_PIDFILE ] ; then

            pid=`cat $KARAF_PIDFILE`
            echo "Found an existing pidfile...$pid"

            check_process_availability
            exists_process=$?

            if [ $exists_process == 1 ] ; then

                error "There is already a ServiceMix 4 instance."
                exit 1

            else

                echo "No process active. Remove pidfile"
                $RM $KARAF_PIDFILE

            fi
        fi

        echo "Starting Karaf Server...."

        # Creating temporary script
        # for set ulimit and change path to karaf_home_dir
        # before start instance.
        $CAT <<EOF >$TMP_START_SCRIPT
#!/bin/bash

# echo "Use ulimit to `ulimit -n`"
cd ${karaf_home_dir}
$JAVA $KARAF_ARGS -classpath "$CLASSPATH" $KARAF_BIN >/dev/null 2>&1 &
if [ \$? -ne 0 ] ; then
    exit 1
else
    echo \$! > $KARAF_PIDFILE
    exit 0
fi
EOF

        chmod a+x $TMP_START_SCRIPT

        $SU - $KARAF_USER -c $TMP_START_SCRIPT
        if [ $? -ne 0 ] ; then
            echo "ERROR"
        else
            echo "SUCCESS"
            ans=0
        fi

        $RM $TMP_START_SCRIPT

    fi

    return $ans
}

stop () {

    local ans=1
    karaf_debug_flag=0
    init_env_vars

    KARAF_BIN="org.apache.karaf.main.Stop"

    if [ $KARAF_SYSTEMD_ENV -eq 0 ] ; then

        if [ ! -e $KARAF_PIDFILE ] ; then
            error "There isn't a Karaf instance. Pidfile not found."
            exit 1
        else

            pid=`cat $KARAF_PIDFILE`
            echo "Found pidfile with value $pid"
            exists=`ps ax | grep $pid | grep karaf.data | wc -l`
            if [ $exists == 0 ] ; then
                echo "Process isn't alive."
                $RM -f $KARAF_PIDFILE
                exit 1
            fi
        fi

        echo "Stopping KARAF Server...."


        $SU -c "$JAVA $KARAF_ARGS -classpath \"$CLASSPATH\" $KARAF_BIN" - $KARAF_USER >/dev/null 2>&1
        if [ $? -ne 0 ] ; then
            echo "Error on stop KARAF Server."
        else

            wait_karaf_shutdown
            $RM -f $KARAF_PIDFILE
            ans=0
        fi

    else
        eval "$JAVA $KARAF_ARGS -classpath \"$CLASSPATH\" $KARAF_BIN"
        if [ $? -ne 0 ] ; then
            echo "Error on stop KARAF Server."
            ans=1
        fi

    fi

    return $ans
}

case $1 in
    'check')
        init_env_vars
        ;;
    'start')
        start
        ;;
    'stop')
        stop
        ;;
    *)
        echo "Use $0 check|start|stop"
        exit 1
        ;;
esac

exit 0
