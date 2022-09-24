# Skaffold Spring Boot Example
- `skaffold.yml` is used by the Skaffold CLI
- `k8s-deployment.yml` & `k8s-service.yml` are used for deployment into the K8s cluster and they are integrated into the `skaffold.yml` for continuous deployment
- `skaffold build` is used for building docker images from `skaffold.yml`
- `skaffold run` is used for building and deploying docker images on to a Kubernetes cluster
- `skaffold dev` is used to watch for files and trigger build and deployment based on that
- `minikube service spring-boot-example` - opens my service url which is configured as type `LoadBalancer`

## Reference Links
- [Skaffold Installation](https://skaffold.dev/docs/install/)
- [GoogleContainerTools](https://github.com/GoogleContainerTools/skaffold)