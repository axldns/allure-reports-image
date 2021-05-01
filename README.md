# allure-reports-image
Minimalistic (88 MB) docker image for allure-reports generation. 

Available @ [dockerhub](https://hub.docker.com/repository/docker/axldns/allure)

Use it for your gitlab/github ci/cd 

Eg.:
```
generate_report:
  stage: test
  image: axldns/allure
  script:
    - allure generate -o allure-report -- allure-results
    - echo "Report generated!"
  artifacts:
    paths:
    - allure-report
```
