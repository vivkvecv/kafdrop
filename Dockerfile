FROM eclipse-temurin:17.0.10_7-jdk

EXPOSE 9000

RUN mkdir /kafka/
WORKDIR /kafka/
COPY *.* /kafka/
COPY kafdrop/target/kafdrop-4.0.2-SNAPSHOT.jar /kafka/target/
RUN ls 
RUN cd target
RUN ls
ENTRYPOINT ["java", "--add-opens=java.base/sun.nio.ch=ALL-UNNAMED","-jar","/kafka/target/kafdrop*jar","--kafka.brokerConnect=kafka-1.mh-kqlwvrlcrnwrslgvkwpf-4c201a12d7add7c99d2b22e361c6f175-0001.che01.containers.appdomain.cloud:9093,kafka-2.mh-kqlwvrlcrnwrslgvkwpf-4c201a12d7add7c99d2b22e361c6f175-0001.che01.containers.appdomain.cloud:9093,kafka-0.mh-kqlwvrlcrnwrslgvkwpf-4c201a12d7add7c99d2b22e361c6f175-0001.che01.containers.appdomain.cloud:9093"]
