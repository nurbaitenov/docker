# FROM tells to download image
FROM amazonlinux:2023


# RUN runs any linux command
RUN yum update -y          \
    yum install telnet -y  \
    yum install unzip -y   \
    yum install httpd -y  

# Opens containers port
EXPOSE 80


