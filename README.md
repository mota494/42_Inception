_This project has been created as part of the 42 curriculum by mloureir_

---

<div align="center">

# Description

</div>

Iception consists of having the student to set up a small infrastructure composed of different services under specific rules. The whole project has to be done in a virtual machine and compiled through a Makefile that calls a docker compose.

Each service has to have a docker image with the same name and every single one of the services has to run in it's specific container. Every container has to use the penultime stable version of Debian or Alpine and the services must be configured through them, so no ready made images from docker hub or other sources.

The following services are mandatory: nginx, mariadb and wordpress.

<div align="center">

## Docker vs VM

</div>

```
A container just virtualizes the kernel, not the whole machine. So it runs on the same kernel as the host OS , while the VM has its own kernel. So when you do a system call to, say, write a file, it's handled directly by the host kernel in the case of a container. The VM would ask its own kernel to write the file to the virtual file system, which would then ask the host kernel to actually write it to disk. 
```

<div align="center">

## Secrets vs Environment variables

</div>

```
Secrets are encrypted, hidden, and used for sensitive data (API keys, passwords), while environment variables are plain-text, visible, and used for non-confidential configuration settings
```

<div align="center">

## Docker Network vs Host Network

</div>

```
Host Network: Docker containers have unrestricted access to all the ports available at the host.  It will also be using the hosts IP address.
Bridge Network: The container still uses the hosts IP address, but that there is a bridge between the ports as seen inside the docker container, and the ports these are mapped to at the host level. This is how you can have two different docker containers think they are using the same port internally, but that they are seen as different ports externally.
```


<div align="center">

## Docker Volumes vs Bind Mounts

</div>

```
While bind mounts are dependent on the directory structure and OS of the host machine, volumes are completely managed by Docker. 
```

---

<div align="center">

# Instructions

</div>

To execute this project first make sure you have the following installed:

-  Development packages of your specific distro
-  Docker engine

After making sure everything's installed:

```
git clone https://github.com/mota494/42_Inception.git $HOME/m_Inception
cd $HOME/m_Iception
make
make up
```

<div align="center">

# Resources

</div>

- [How to install docker engine](https://docs.docker.com/engine/install/debian/)
- [Docker networking explained](https://bhavyansh001.medium.com/docker-networking-explained-after-3-days-of-pulling-my-hair-out-7b91fa623802)
- [Nginx documentation](https://docs.nginx.com/)
- [MariaDB documentation](https://mariadb.com/docs)
- [The Docker Docs](https://docs.docker.com/)

## AI usage

During this project I used AI more at the end of the project, when I believed i understood perfectly what i had done and written but needed something to reassure me and make sure that nothing was missing. 
This ended up not being the best of options since the solutions that the AI gave me were always heavily outdated and sometimes straight up wrong.
