Sonarr
======

Sonarr - https://sonarr.tv/

Latest stable Sonarr Git release from Arch Linux AUR using Packer to compile.

**Pull image**

```
docker pull binhex/arch-sonarr
```

**Run container**

```
docker run -d -p 8989:8989 --name=<container name> -v <path for data files>:/data -v <path for config files>:/config -v /etc/localtime:/etc/localtime:ro binhex/arch-sonarr
```

Please replace all user variables in the above command defined by <> with the correct values.

**Access Sonarr**

```
http://<host ip>:8989
```

Default username/password for the webui is "admin/admin"
