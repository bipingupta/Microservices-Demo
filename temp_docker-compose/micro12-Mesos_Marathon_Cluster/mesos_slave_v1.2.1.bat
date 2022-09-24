docker run -d --name mesos_slave_1 --net=host --privileged ^
-e MESOS_MASTER=zk://127.0.0.1:2181/mesos ^
-e MESOS_CONTAINERIZERS=docker,mesos ^
-e MESOS_HOSTNAME=192.168.99.100 ^
-e MESOS_IP=192.168.99.100 ^
-e MESOS_PORT=5051 ^
-e MESOS_LOG_DIR=/var/log/mesos/slave ^
-e MESOS_WORK_DIR=/tmp ^
-e MESOS_EXECUTOR_REGISTRATION_TIMEOUT=10mins ^
-e MESOS_RESOURCES=cpus:2;mem:2048;disk:20480;ports(*):[11000-11999] ^
-v /sys/fs/cgroup:/sys/fs/cgroup ^
-v /var/run/docker.sock:/var/run/docker.sock ^
-v /usr/local/bin/docker:/usr/bin/docker ^
-v /sys:/sys:ro ^
mesosphere/mesos-slave:1.2.1