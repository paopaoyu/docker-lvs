FROM index.tenxcloud.com/tenxcloud/centos:6.6

MAINTAINER by paopaoyu


RUN yum install -y httpd

RUN rm /etc/httpd/conf/httpd.conf

COPY httpd.conf /etc/httpd/conf/httpd.conf

COPY realserver.sh /realserver.sh

RUN chmod a+x /realserver.sh

WORKDIR /

RUN echo "./realserver.sh start" >> local.rc

RUN echo "exec httpd -D FOREGROUND" >> local.rc

Expose 80

CMD ["sh", "local.rc"]

