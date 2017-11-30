docker run -d -p 8090:8080 --name backend-a -e "SPRING_APPLICATION_NAME=backend-service-a" -e "SPRING_APPLICATION_INDEX=1" -e "SPRING_CLOUD_CONSUL_HOST=172.17.0.5" -e "LOGGING_SPLUNK_HOST=172.17.0.2" -e "LOGGING_SPLUNK_TOKEN=B2F5CEF8-4860-4362-A60F-285AFD42BCE2" -e "LOGGING_BUSINESS_INDEX_NAME=businessoperations" -e "LOGGING_DIRECTORY=logs" -e "LOGGING_ENABLE_LOG_TO_FILE=true" -e "LOGGING_ENABLE_LOG_TO_SPLUNK=true" -e "LOGGING_ENVIRONMENT=poc" -e "LOGGING_LEVEL=INFO" -e "LOGGING_NODE=someNiceNode" -e "LOGGING_SLOWQUERY_INDEX_NAME=acme-slowquery" -e "LOGGING_SPARSE=true" -e "LOGGING_SPLUNK_PORT=8088" -e "SERVER_PORT=8080" -e "LOGGING_TECH_INDEX_NAME=acme" -v C:/logs-backend-a:/logs docstore.rgs.ru:5000/spring-cloud-demo-backend-service:latest