# VBSF
A small daemon to init the Virtual Box System File (vboxsf)

## Directory
### We need copy the file **vbsf.sh** inside the **/etc/init.d/** folder

## To prepare the script
```shell
sudo chmod -x vbsf.sh # This allow the script execution

update-rc.d vbsf.sh defaults
update-rc.d vbsf.sh start 20 3 4 5
```

## How to know the status of this service
```shell
systemctl status vbsf.service
```

## Ejecutar servicio o detenerlo
```shell
sudo service vbsf.sh start
sudo service vbsf.sh stop
```