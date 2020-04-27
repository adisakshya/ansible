# Dockerfile

# Base Image
FROM ubuntu:latest

# Maintainer
LABEL maintainer "Adisakshya Chauhan <adisakshya98@gmail.com>"

# Install Python, pip, Ansible and OpenSSH-Client
RUN apt-get update
RUN apt-get install -y \
    python \
    python-pip \
    ansible \
    openssh-client

# Create directories and set ansible hosts
RUN mkdir -p /etc/ansible/ /ansible && \
    echo "[local]" >> /etc/ansible/hosts && \
    echo "localhost" >> /etc/ansible/hosts

# Create directory to hold playbooks
RUN mkdir -p /ansible/playbooks

# Environment Variable
ENV ANSIBLE_GATHERING=smart \
    ANSIBLE_HOST_KEY_CHECKING=false \
    ANSIBLE_RETRY_FILES_ENABLED=false \
    ANSIBLE_ROLES_PATH=/ansible/playbooks/roles \
    ANSIBLE_SSH_PIPELINING=True \
    PYTHONPATH=/ansible/lib \
    PATH=/ansible/bin:$PATH \
    ANSIBLE_LIBRARY=/ansible/library \
    EDITOR=nano

# Work Directory
WORKDIR /ansible
