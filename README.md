# store-infrastructure

Microservices:
* infrastructure - project holds all devops infrastructure configurations
https://github.com/sorrrrrin/store-infrastructure

* catalog-service
https://github.com/sorrrrrin/store-catalog-service

* order-service
https://github.com/sorrrrrin/store-order-service

Tech stack:
* Java 17
* Maven
* Spring Boot
* Docker
* Kubernetes (Minikube) - everything is deployed as deployments in this kubernetes cluster as docker containers, so all microservices and tools and database
* Postgresql
* Kafka - for microservice events communication architecture
* Rest API - for microservice synchronous communication and frontend

* Elastic search & Spring Data Elastic for indexing and searching products
* Prometheus & Grafana for metrics and tracesmonitoring
* Elastic Stack (Elasticsearch, Logstash, Kibana) - for logs monitoring

* Lombock - generates boilerplate code
* MapStruct - generates mappers between entities and Dtos objects


Will be added next
* customer-service - new microservice
* Tests

