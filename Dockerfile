FROM registry.access.redhat.com/ubi8:latest
LABEL name="testwebserver" \
      vendor="Example Inc" \
      version="1.0" \
      release="1" \
      run='docker run -d -p 8080:80 --name=testweb testwebserver' \
      summary="Example Starter app" \
      description="Starter app will do ....."

COPY licenses /licenses

RUN  yum -y update-minimal
RUN yum clean all
USER test_user
