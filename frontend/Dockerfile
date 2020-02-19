#This is dockerfile for cart frontend
FROM centos:7
MAINTAINER kakali.sahu1988@gmail.com
#update all existing package
RUN yum -y update
#Install apache php php-gd php-mysql
RUN yum -y install httpd php php-gd php-mysql
#copy the code
ADD code /var/www/html
#COPY code /var/www/html
#environment variable
ENV mydbserver=test
EXPOSE 80
CMD ["httpd","-D","FOREGROUND"]