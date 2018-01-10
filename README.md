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

## Start/Stop service
```shell
sudo service vbsf.sh start
sudo service vbsf.sh stop
```

## Edit the config inside VBSF.sh
```shell
#...
start() {
    echo "Starting VBSF."
    mount -t vboxsf <name virtual box folder (host)> /media/<name linux folder (virtual)>
}
#...
stop() {
    echo "Stopping VBSF."
    umount vboxsf <name virtual box folder (host)> /media/<name linux folder (virtual)>
}
sudo service vbsf.sh stop
```
An example of this process is inside the script.
The host folder is "torrent" in C:/torrent, and the virtual folder in linux (in the virtual machine) is windows inside the "media" folder. 