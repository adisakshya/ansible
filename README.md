# Ansible
Ansible Playbook inside docker container

[![Dockerhub](https://img.shields.io/badge/Dockerhub-latest-blue.svg)](https://hub.docker.com/repository/docker/adisakshya/ansible)
[![maintenance](https://img.shields.io/badge/maintained%3F-yes-green.svg)]()
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](https://github.com/adisakshya/ansible/pulls)

Normally we would install Ansible to our control node just like any other application, but an alternate strategy is to install Ansible inside a standalone Docker image.

In control node Ansible requires specific Python libraries and their system dependencies. So instead of using package manager to install Ansible and it's dependencies we can just pull a Docker image.

The Dockerfile declares an entrypoint enabling the running container to function as a self-contained executable.

## Instructions

- Pull the image using
```
docker pull adisakshya/ansible:latest
```

- Run ansible-playbook inside docker container using command 
```
docker run -it --rm -v "path/to/playbooks/directory:/ansible/playbooks" adisakshya/ansible:latest playbook-name.yml
```

## Development

- Clone the repository using command
```
git clone https://github.com/adisakshya/ansible.git
```

- Build the docker image using command (from root of repository)
```
docker build -t yourname/imagename:tag .
```

- Now you can run ansible-playbook inside docker container using command (from root of repository)
```
docker run -it --rm -v "/$(pwd)/playbooks:/ansible/playbooks" yourname/imagename:tag playbook-name.yml
```