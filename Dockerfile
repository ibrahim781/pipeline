FROM centos:7

# Create a user 'ibrahim' and set a password
RUN for user in ibrahim; do useradd $user; echo "123" | passwd $user --stdin; done

# Update the system and install MySQL server using yum
RUN yum update -y && yum install -y mysql-server
