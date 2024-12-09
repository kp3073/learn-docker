# Use CentOS as the base image
FROM centos:8

# Update to use the Vault repository and install troubleshooting tools
RUN sed -i 's|mirrorlist=|#mirrorlist=|g' /etc/yum.repos.d/CentOS-*.repo && \
    sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*.repo && \
    yum update -y && \
    yum install -y \
    curl \
    wget \
    net-tools \
    iputils \
    traceroute \
    tcpdump \
    vim \
    bind-utils \
    && yum clean all

# Set the entrypoint to a shell for immediate interaction
ENTRYPOINT ["tail","-f", "/dev/null"]
