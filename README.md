# store-infrastructure

Microservices:
* For demo purposes, it is a store application with 3 microservices:

* catalog-service - Manages products, categories and inventory. (work in progress)
https://github.com/sorrrrrin/store-catalog-service

* order-service - Manages orders, order items and order status. (work in progress)
https://github.com/sorrrrrin/store-order-service

* users-service - (will be added next) - Manages users, roles (customers, admins) and permissions. 

* infrastructure - Manages devops infrastructure configurations (work in progress)
https://github.com/sorrrrrin/store-infrastructure

TODO next:
* Tests (unit & integration tests with Junit & Mockito)
* Exception handling (+ tests)
* Add JWT token authentication & authorization with Spring default security on USERS and AUTHORITIES tables (+ tests)

Tech stack:
* Java 17
* Maven
* Spring Boot
* Spring Data Jpa
* Spring Data Elastic - used with Elastic search for indexing and searching products
* Spring Micrometer - used for metrics to be sent to Prometheus and visualized in Grafana
* Spring Kafka - used for microservices events communication with Kafka
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


To be added later:
* Tests
* CI/CD pipeline
* Deployment to cloud (AWS/ GCP)
* Frontend (React)
...
