FROM centos:8

# Install necessary packages including 'passwd'
#RUN yum update -y && yum install -y passwd

# Create a user 'ibrahim' and set a password
RUN for user in ibrahim; do useradd $user; echo "123" | passwd $user --stdin; done
