DOCKER_BUILDKIT=1 docker build --progress=plain --secret id=proxy,src=/tmp/x509up_u`id -u` --tag="alexanderrichards/ganga:latest" .
