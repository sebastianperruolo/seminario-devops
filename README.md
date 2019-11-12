# Terraform + Ansible

## Requirements
- Docker

### Docker

#### Linux
```
cd seminario-devops
chmod +x install_docker.sh
./install_docker.sh
```

#### Windows
Más detalles y opciones de instalación docker Windows [https://docs.docker.com/docker-for-windows/install/](https://docs.docker.com/docker-for-windows/install/)

### Mac
Más detalles y opciones de instalación Mac [https://docs.docker.com/docker-for-mac/install/](https://docs.docker.com/docker-for-mac/install/)



### Run docker container with terraform + ansible

#### Linux / Mac
Execute the followin command:
```bash
docker run -v ${PWD}/:/app -v /var/run/docker.sock:/var/run/docker.sock -ti fcapua/terraform-ansible bash
```

#### Windows
```bash
docker run -v ${PWD}/:/app -v //var/run/docker.sock:/var/run/docker.sock -ti fcapua/terraform-ansible bash
```