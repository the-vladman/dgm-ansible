dgm-ansible
===========
Ansible playbooks for CKAN instance at datos.gob.mx

Instalación
==============
Dependencias:

[Vagrant](http://www.vagrantup.com)

[Virtualbox](http://www.virtualbox.org)

[Ansible](http://www.ansible.com)


Instrucciones
==============
Una vez instaladas las dependencias, clonado el repositorio, ejecutar desde línea de comandos:

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

