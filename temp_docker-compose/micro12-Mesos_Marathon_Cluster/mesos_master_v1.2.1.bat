docker run -d -p 5050:5050 --name mesos-master --net=host ^
-e MESOS_ZK=zk://192.168.99.100:2181/mesos ^
-e MESOS_HOSTNAME=192.168.99.100 ^
-e MESOS_IP=192.168.99.100 ^
-e MESOS_QUORUM=1 ^
-e MESOS_LOG_DIR=/var/log/mesos/master ^
-e MESOS_WORK_DIR=/var/lib/mesos/master ^
mesosphere/mesos-master:1.2.1
