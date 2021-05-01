FROM openjdk:8-jre-alpine

ARG ALLURE_VERSION="2.13.9"
ENV PATH="/home/allure/bin:${PATH}"

RUN cd home && wget "https://github.com/allure-framework/allure2/releases/download/${ALLURE_VERSION}/allure-${ALLURE_VERSION}.tgz" && \ 
tar -xzf "allure-${ALLURE_VERSION}.tgz" && mv "allure-${ALLURE_VERSION}" allure
WORKDIR /opt