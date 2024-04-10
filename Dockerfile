FROM eclipse-temurin:17.0.10_7-jdk

EXPOSE 9000

RUN mkdir /kafdrop/
WORKDIR /kafdrop/
COPY *.* /kafdrop/

ENTRYPOINT ["java", "--add-opens=java.base/sun.nio.ch=ALL-UNNAMED","-jar","./target/kafdrop*jar","--kafka.brokerConnect=kafka-1.mh-kqlwvrlcrnwrslgvkwpf-4c201a12d7add7c99d2b22e361c6f175-0001.che01.containers.appdomain.cloud:9093,kafka-2.mh-kqlwvrlcrnwrslgvkwpf-4c201a12d7add7c99d2b22e361c6f175-0001.che01.containers.appdomain.cloud:9093,kafka-0.mh-kqlwvrlcrnwrslgvkwpf-4c201a12d7add7c99d2b22e361c6f175-0001.che01.containers.appdomain.cloud:9093"]
