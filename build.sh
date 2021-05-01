[ -n "$1" ] && VERSION=$1 || VERSION="2.13.9"
docker build --build-arg ALLURE_VERSION=$VERSION  -t "axldns/allure:latest" -t "axldns/allure:$VERSION" .
docker push axldns/allure --all-tags