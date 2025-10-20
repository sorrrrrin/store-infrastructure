# store-infrastructure

### Microservices architecture for demo purposes, it is a store application with 3 microservices:
* catalog-service - Manages products, categories and inventory.<br>
  https://github.com/sorrrrrin/store-catalog-service
* order-service - Manages orders, order items and order status.<br>
  https://github.com/sorrrrrin/store-order-service
* user-service - Manages users with admin and customer roles and also login and logout with JWT token.<br>
  https://github.com/sorrrrrin/store-user-service
* infrastructure - Manages devops infrastructure configurations.<br>
  https://github.com/sorrrrrin/store-infrastructure


### CI/CD Pipelines
* https://github.com/sorrrrrin/store-user-service/actions - CI
* https://github.com/sorrrrrin/store-catalog-service/actions - CI
* https://github.com/sorrrrrin/store-order-service/actions - CI
* https://github.com/sorrrrrin/store-infrastructure/actions - CD


### Deployed to AWS (EC2 instance with Docker Compose)
* http://13.49.123.145:8082/swagger-ui/index.html - User Service
* http://13.49.123.145:8080/swagger-ui/index.html - Catalog Service
* http://13.49.123.145:8081/swagger-ui/index.html - Order Service


### Tech stack:
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

### REST API best practices covered:
* Exception handling - DONE
* Documentation (OpenAPI/Swagger) - DONE
* Tests (unit & integration tests with Junit & Mockito) DONE
* Security (JWT token) - DONE
* Development testing, with tools like Postman - DONE
* Use HTTP Request Methods (POST, GET, PUT, PATCH, DELETE) - DONE
* Use HTTP Response status (200, 404, ...) - DONE
* Use nouns at plural form for resource names - DONE
* Don't send secure info in URI - DONE

### Microservice Architecture design patterns covered:
* Service Decomposition Patterns
  * Used domain-driven design (DDD) - DONE <p style="font-size:10px;">Each microservice represents a specific business function or capability (e.g., Catalog Management, Order Management, User Management)</p>
* Service Communication Patterns
  * Asynchronous Communication with Kafka - DONE <p style="font-size:10px;">Services use event bus asynchronous communication with Kafka. This helps decouple services and ensures eventual consistency.</p>
  * Synchronous Communication with REST API - DONE <p style="font-size:10px;">Microservices also communicate using HTTP via REST APIs. This is commonly used for real-time data exchanges.</p>
* Data Management Patterns
  * Database per Service - DONE <p style="font-size:10px;">Each microservice manages its own database to ensure independence and avoid tight coupling.</p>
* Security Patterns
  * Authentication and Authorization - DONE <p style="font-size:10px;">Used JWT (Json web token) for secure authentication and authorization between services, ensuring that users and services interact securely.</p>
* Deployment and and CI/CD Patterns
  * Containerization - DONE <p style="font-size:10px;">Microservices are deployed in Docker containers to ensure consistency and portability across environments.</p>
  * Orchestration - DONE <p style="font-size:10px;">Used Kubernetes for managing containerized services, enabling auto-scaling, self-healing, and load balancing.</p>
  * CI/CD Pipelines - DONE <p style="font-size:10px;">Automate build, test, and deploy processes using Jenkins, GitLab CI/CD or GitHub Actions.</p>
* Observability Patterns
  * Centralized Logging - DONE <p style="font-size:10px;">Elastic Stack (Elasticsearch, Logstash, Kibana) aggregates logs from all microservices into a single repository for easier analysis and monitoring.</p>
  * Metrics and Monitoring - DONE <p style="font-size:10px;">Prometheus and Grafana with Spring micrometer library are used collect and visualize metrics, ensuring that you can monitor the health of the services in real-time.</p>
  * Tracing - TODO <p style="font-size:10px;">To track a request's journey through multiple microservices, helping diagnose performance bottlenecks and service failures.</p>
* Resilience Patterns
  * Circuit Breaker Pattern - TODO <p style="font-size:10px;">Prevents failures from cascading through the system by halting calls to a service that is experiencing issues, allowing it time to recover.</p>
  * Retry Pattern - TODO <p style="font-size:10px;">In case of failure, services automatically retry requests to a service, often with exponential backoff, to handle temporary issues.</p>
  * Fallback Pattern - TODO <p style="font-size:10px;">Provides a default response or an alternative action when a service call fails, ensuring that the system remains responsive even in case of failures.</p>
  * Rate Limiting Pattern - TODO <p style="font-size:10px;">This pattern protects microservices from excessive load and ensures fair distribution of resources by limiting the rate at which requests can be made to a service. It is especially useful for public-facing APIs.</p>
* Scalability and performance Patterns
  * Load Balancing - DONE <p style="font-size:10px;">Done through Kubernetes, to distributes incoming traffic across multiple instances of microservices, improving reliability and scalability.</p>
  * Caching - TODO <p style="font-size:10px;">Use caching layers like Redis or Memcached to reduce latency.</p>
  * Horizontal Scaling - DONE <p style="font-size:10px;">Scale services by adding more instances rather than increasing hardware capacity.</p>
  * Sharding - TODO <p style="font-size:10px;">Data is partitioned into smaller chunks (shards), and each microservice handles a subset of the data to scale horizontally. Look for database replicas and partitioning in cloud provides like AWS, GCP, etc.</p>

### To be added later:
* Frontend (React)
  ...
