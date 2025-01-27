# store-infrastructure

Microservices:
* For demo purposes, it is a store application with 3 microservices: 
* catalog-service (work in progress)
https://github.com/sorrrrrin/store-catalog-service

* order-service  (work in progress)
https://github.com/sorrrrrin/store-order-service

* customer-service - (will be added later)

* infrastructure - project holds all devops infrastructure configurations  (work in progress)
https://github.com/sorrrrrin/store-infrastructure


Tech stack:
* Java 17
* Maven
* Spring Boot
* Spring Data Jpa
* Spring Data Elastic
* Spring Micrometer - for metrics to be sent to Prometheus and visualized in Grafana
* Docker
* Kubernetes (Minikube) - everything is deployed in this kubernetes cluster as docker containers, so all microservices, database and tools
* Postgresql
* Hibernate
* Kafka - for microservice events communication architecture
* Rest API - for microservice synchronous communication and frontend

* Elastic search & Spring Data Elastic for indexing and searching products
* Elastic Stack (Elasticsearch, Logstash, Kibana) - for logs monitoring 
* Prometheus & Grafana for metrics and traces monitoring


* Lombock - generates boilerplate code
* MapStruct - generates mappers between entities and Dtos objects


To be added next:
* Tests
* CI/CD pipeline
* Deployment to cloud (AWS and GCP)
* Frontend (React)
...
