# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="The pub/sub library for node backed by Redis, MongoDB, AMQP (RabbitMQ), ZeroMQ, Kafka, MQTT (Mosquitto) or just plain node!"
HOMEPAGE="https://github.com/mcollina/ascoltatori#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/amqp-0.2.7
	>=dev-node/amqplib-0.4.2
	>=dev-node/debug-2.2.0
	>=dev-node/eventemitter2-2.2.2
	>=dev-node/ioredis-2.5.0
	>=dev-node/kafka-node-0.5.9
	>=dev-node/kerberos-0.0.24
	>=dev-node/mongodb-2.2.36
	>=dev-node/mqtt-1.14.1
	>=dev-node/msgpack-lite-0.1.26
	>=dev-node/node-uuid-1.4.8
	>=dev-node/qlobber-0.7.0
	>=dev-node/qlobber-fsq-3.2.4
	>=dev-node/steed-1.1.3
	>=dev-node/zmq-2.15.3
"
RDEPEND="${DEPEND}"


S="${WORKDIR}/package"

inherit npmv1

