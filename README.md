dgm-ansible
===========
Ansible playbooks for CKAN instance at datos.gob.mx

Instalación
==============
Dependencias:

[Vagrant](http://www.vagrantup.com)

[Virtualbox](http://www.virtualbox.org)

[Ansible](http://www.ansible.com)

[Docker](https://www.docker.com)

Instrucciones
==============
*Las siguientes instrucciones presuponen una conexion a la VPN*
Crear un docker-redis local:

```shell
sudo docker run --name ckan-redis -d -p 6379:6379 redis
```
Una vez instaladas las dependencias, clonado el repositorio y creado el REDIS local, ejecutar desde línea de comandos:

```shell
$ vagrant up
```
ésto puede tardar unos minutos.

Una vez descargada la imagen, si algo ha fallado
```shell
$ vagrant halt

$ vagrant up

$ vagrant provision
```

desde el navegador abrir la dirección local 192.168.33.20:8080

