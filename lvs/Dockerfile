FROM index.tenxcloud.com/tenxcloud/centos:6.6

MAINTAINER by paopaoyu

RUN yum install -y ipvsadm keepalived

COPY keepalived.tmpl /app/keepalived.tmpl
COPY run.sh /app/run.sh
RUN chmod 755 /app/run.sh

# Install Docker-gen
COPY docker-gen /app/
RUN chmod u+x /app/docker-gen

EXPOSE 80

CMD ["/app/run.sh"]

