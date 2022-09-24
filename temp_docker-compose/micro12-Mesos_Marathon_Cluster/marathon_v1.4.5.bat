docker run -d -p 8080:8080 --name marathon --net=host  ^
-e MARATHON_MASTER=zk://127.0.0.1:2181/mesos ^
-e task_launch_timeout=600000 ^
mesosphere/marathon:v1.4.5