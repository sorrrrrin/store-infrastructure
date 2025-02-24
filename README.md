# store-infrastructure

Microservices:
* For demo purposes, it is a store application with 3 microservices:

* catalog-service - Manages products, categories and inventory. (work in progress)
https://github.com/sorrrrrin/store-catalog-service

* order-service - Manages orders, order items and order status. (work in progress)
https://github.com/sorrrrrin/store-order-service

* user-service - (will be implemented next) - Manages users, roles (customers, admins) and permissions.
https://github.com/sorrrrrin/store-user-service

* infrastructure - Manages devops infrastructure configurations (work in progress)
https://github.com/sorrrrrin/store-infrastructure

TODO next:
* Exception handling (+tests) - Work in progress (1/2 DONE)
* Tests (unit & integration tests with Junit & Mockito)
* Add basic functionality to user-service
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
* OpenAPI/Swagger - for documentation
* Elastic search & Spring Data Elastic for indexing and searching products
* Elastic Stack (Elasticsearch, Logstash, Kibana) - for logs monitoring 
* Prometheus & Grafana for metrics and traces monitoring
* Lombock - generates boilerplate code
* MapStruct - generates mappers between entities and Dtos objects

REST API best practices covered:
* Exception handling - DONE
* Documentation (OpenAPI/Swagger) - DONE 
* Security - Work In Progress
* Test in development with tools like Postman - DONE
* Use HTTP Request Methods (POST, GET, PUT, PATCH, DELETE) - DONE
* Use HTTP Response status (200, 404, ...) - DONE
* Use nouns (plural form) for resource names - DONE
* Don't send secure info in URI - DONE

Microservice Architecture design patterns covered:
* Work in progress

To be added later:
* CI/CD pipeline
* Deployment to cloud (AWS/ GCP)
* Frontend (React)
...
