@echo off
--start cmd /k "echo minikube stop && minikube stop"
--timeout /t 30 /nobreak
start cmd /k "echo minikube start  --memory=6g && minikube start  --memory=6g"
timeout /t 45 /nobreak

start cmd /k "echo minikube dashboard && minikube dashboard"
start cmd /k "echo kubectl port-forward -n monitoring svc/prometheus-service 9090:9090 && kubectl port-forward -n monitoring svc/prometheus-service 9090:9090"
start cmd /k "echo kubectl port-forward -n monitoring svc/grafana 3000:80 && kubectl port-forward -n monitoring svc/grafana 3000:80"
start cmd /k "echo kubectl port-forward svc/catalog-service -n backend 8181:8080 && kubectl port-forward svc/catalog-service -n backend 8181:8080"
start cmd /k "echo kubectl port-forward svc/postgresql 5432:5432 -n backend && kubectl port-forward svc/postgresql 5432:5432 -n backend"
start cmd /k "echo kubectl port-forward svc/elasticsearch-master -n monitoring 9200:9200 && kubectl port-forward svc/elasticsearch-master -n monitoring 9200:9200	"
start cmd /k "echo kubectl port-forward svc/elk-kibana-kibana -n monitoring 5601:5601 && kubectl port-forward svc/elk-kibana-kibana -n monitoring 5601:5601"
start cmd /k "echo minikube tunnel && minikube tunnel"
timeout /t 10 /nobreak

--start cmd /k "echo kubectl -n kafka run kafka-consumer -ti --image=quay.io/strimzi/kafka:0.45.0-kafka-3.9.0 --rm=true --restart=Never -- bin/kafka-console-consumer.sh --bootstrap-server my-cluster-kafka-bootstrap.kafka:9092 --topic my-topic && kubectl -n kafka run kafka-consumer -ti --image=quay.io/strimzi/kafka:0.45.0-kafka-3.9.0 --rm=true --restart=Never -- bin/kafka-console-consumer.sh --bootstrap-server my-cluster-kafka-bootstrap.kafka:9092 --topic my-topic"
--start cmd /k "echo kubectl -n kafka run kafka-producer -ti --image=quay.io/strimzi/kafka:0.45.0-kafka-3.9.0 --rm=true --restart=Never -- bin/kafka-console-producer.sh --bootstrap-server my-cluster-kafka-bootstrap.kafka:9092 --topic my-topic && kubectl -n kafka run kafka-producer -ti --image=quay.io/strimzi/kafka:0.45.0-kafka-3.9.0 --rm=true --restart=Never -- bin/kafka-console-producer.sh --bootstrap-server my-cluster-kafka-bootstrap.kafka:9092 --topic my-topic"
