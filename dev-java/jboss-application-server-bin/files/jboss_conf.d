##############################################
# JBOSS Server Configuration File            #
# Author: Ge@@ru, geaaru@gmail.com           #
# Created: July 9, 2008                      #
##############################################
# NOTE: It is advised use of absolute paths and not
#       relative paths.

# The base directory of the jboss distribution (default)
jboss_home_dir="/var/jboss"

# The base url of the jboss distribution
# jboss_home_url=""

# The url where the kernel jars exist
# (Default = ${jboss_home_url}/lib)
# jboss_lib_url=""

# A directory where patch jars exit
# jboss_patch_url=""

# The configuration name of the server (default || minimal || all)
jboss_server_name="default"

# The directory where server configurations exist
# (Default = ${jboss_home_dir}/server)
# jboss_server_base_dir=""

# The url where server configurations exist
# (Default = ${jboss_home_url}/server)
# jboss_server_base_url=""

# The directory for the current configuration
# (Default = ${jboss_server_base_dir}/${jboss_server_name})
# jboss_server_home_dir=""

# The url for the current configuration
# (Default = ${jboss_server_base_url}/${jboss_server_name})
# jboss_server_home_url=""

# The directory for temporary files
# (Default = ${jboss_server_home_dir}/tmp)
# jboss_server_temp_dir=""

# The directory for data files
# (Default = ${jboss_server_home_dir}/data)
# jboss_server_data_dir=""

# The url for configuration files
# (Default = ${jboss_server_home_url}/conf)
# jboss_server_config_url=""

# The url for static jar files
# (Default = ${jboss_server_home_url}/lib)
# jboss_server_lib_url=""

# The directory where the server logs are written
# (Default = ${jboss_server_home_dir}/log)
jboss_server_log_dir="/var/log/jboss"

# The host name or ip addrss for jboss services to bind to
# (Default = 0.0.0.0)
# jboss_bind_address="127.0.0.1"


#########################################################
# Advance configuration                                 #
#------------------------------------------------------ #
# Set these variables if you known what you do.         #
#########################################################

# The cluster partition
# (Default = DefaultPartition)
# jboss_partition_name=""

# The udp group
# jboss_partition_udpGroup=""

# Whether JBoss should do System.exit() on a shutdown.
# (Default = true)
# jboss_server_exitonshutdown="true"

# Whether JBoss should do shutdown synchronously (true) or
# asynchrounously (false)
# (Default = false)
# jboss_server_blockingshutdown="false"

# When true an error is thrown if the jboss stream handlers
# could not be installed
# (Default = true)
# jboss_server_requirejbossurlstreamhandler="true"

# Whether to override the main java temporary directory
# (java.io.tmpdir) to the server temporary directory.
# (Default = false)
# jboss_server_temp_dir_overridejavatmpdir="false"

# Force a Runtime.getRuntime().halt() at the end of the
# jboss shutdown hook
# (Default = true)
# jboss_shutdown_forceHalt="true"

# Whether to load the native libraries unpacked from
# deployments.
# (Default = false)
# jboss_native_load="false"

# Location to unpack native libraries in deployments
# (Default = tmp/native)
# jboss_native_dir=""

# The fully qualified class name of the
# org.jboss.system.server.Server implementation
# (Default = org.jboss.system.server.ServerImpl)
# jboss_server_type=""

# The file to deploy at the end of the end of the
# bootstrap, relative to the config url
# (Default = jboss-service.xml)
# jboss_server_root_deployment_filename=""

# The basic jars used to bootstrap the kernel, there
# are other jars used.
# (Default = log4j-boot.jar, jboss-common.jar, jboss-system.jar)
# jboss_boot_library_list=""

# (Not JBoss properties)----------------------

# Override the location of the log4j bootstrap configuration
# log4j_configuration=""

# Define maximun file descriptors
# Default = (maximum) TO COMPLETE
# max_fd="maximum"

# (JVM Options)-------------------------------

# Define other java options for jboss server jvm
# java_options=""

# Specify location of the Java home directory.
# (Default = script use java-config --jre-home to recover data)
# java_home_dir=""

# specify the exact Java VM executable to use
# (Default = ${java_home_dir}/bin/java
# java_vm="java"

# Specifies  the  initial size of the memory allocation pool.
# This value must be a multiple of 1024 greater than 1 MB.
# Append the letter k or K to  indicate kilobytes or the 
# letter m or M to indicate megabytes.
# (Default = 128m)
java_xms_opt="128m"

# Specifies the maximum size, in bytes, of the memory
# allocation pool. This value must  be a  multiple of 1024
# greater than 2 MB.  Append the letter k or K to indicate
# kilobytes or the letter m or M to indicate megabytes.
# (Default = 512m)
java_xmx_opt="254m"

# Configure RMI garbage collection ---------------
# client.gcInterval: When it is necessary to ensure that
# DGC clean calls for unreachable remote references are
# delivered in a timely fashion, the value of this property
# represents the maximum interval (in milliseconds) that the
# RMI runtime will allow between garbage collections of the
# local heap.
# (Default = 3600000)
# java_dgc_client_gcInterval="60000"
# server.gcInterval: When it is necessary to ensure that
# unreachable remote objects are unexported and garbage
# collected in a timely fashion, the value of this property
# represents the maximum interval (in milliseconds) that the
# RMI runtime will allow between garbage collections of the
# local heap.
# (Default = 3600000)
# java_dgc_server_gcInterval="60000"

# Forse IPv4 since IPv6 doesn't work correctly with jdk5 and
# lower.
# (Default = true)
# java_force_ipv4="true"

# Java endorsed library dirs.
# (Default = ${jboss_home_dir}/lib/endorsed
# java_endorsed_dirs=""


# (Management data) -----------------------

# User used to start JBoss Server
jboss_user="jboss"

# Group used to start JBoss Server
jboss_group="jboss"

