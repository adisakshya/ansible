# Ansible
Ansible Playbook inside docker container

[![Dockerhub](https://img.shields.io/badge/Dockerhub-latest-blue.svg)](https://hub.docker.com/repository/docker/adisakshya/ansible)
[![maintenance](https://img.shields.io/badge/maintained-yes-green.svg)]()
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](https://github.com/adisakshya/ansible/pulls)

Normally we would install Ansible to our control node just like any other application, but an alternate strategy is to install Ansible inside a standalone Docker image.

In control node Ansible requires specific Python libraries and their system dependencies. So instead of using package manager to install Ansible and it's dependencies we can just pull a Docker image.

## Instructions

- Pull the image using
```
docker pull adisakshya/ansible:latest
```

- Run ansible commands inside docker container using
```
docker run -it --rm adisakshya/ansible:latest ansible <command>
```

- Run ansible-playbook inside docker container using command 
```
docker run -it --rm -v "path/to/playbooks/directory:/ansible/playbooks" adisakshya/ansible:latest ansible-playbook <playbook-name.yml>
```
