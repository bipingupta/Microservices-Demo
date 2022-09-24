docker pull mesosphere/mesos-slave:1.2.1
docker tag mesosphere/mesos-slave:1.2.1 localhost:5000/mesos-slave:1.2.1
docker push localhost:5000/mesos-slave:1.2.1