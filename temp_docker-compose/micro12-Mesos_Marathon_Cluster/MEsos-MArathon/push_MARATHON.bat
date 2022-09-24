docker pull mesosphere/marathon:v1.4.5
docker tag mesosphere/marathon:v1.4.5 localhost:5000/marathon:1.4.5
docker push localhost:5000/marathon:1.4.5