FROM centos:7

RUN for user in ibrahim; do useradd $user; echo "123" | passwd $user --stdin; done
RUN yum update -y && yum install mysql -y
