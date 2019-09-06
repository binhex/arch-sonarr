**Application**

[Sonarr](https://sonarr.tv/)

**Description**

Sonarr is a PVR for Usenet and BitTorrent users. It can monitor multiple RSS feeds for new episodes of your favorite shows and will grab, sort and rename them. It can also be configured to automatically upgrade the quality of files already downloaded when a better quality format becomes available.

**Build notes**

Latest stable Sonarr release from Arch Linux AUR.

**Usage**
```
docker run -d \
    -p 8989:8989 \
    -p 9897:9897 \
    --name=<container name> \
    -v <path for media files>:/media \
    -v <path for data files>:/data \
    -v <path for config files>:/config \
    -v /etc/localtime:/etc/localtime:ro \
    -e UMASK=<umask for created files> \
    -e PUID=<uid for user> \
    -e PGID=<gid for user> \
    binhex/arch-sonarr
```

Please replace all user variables in the above command defined by <> with the correct values.

**Access application**

`http://<host ip>:8989`

**Example**
```
docker run -d \
    -p 8989:8989 \
    -p 9897:9897 \
    --name=sonarr \
    -v /media/tv:/media \
    -v /apps/docker/sabnzbd/watched:/data \
    -v /apps/docker/sonarr:/config \
    -v /etc/localtime:/etc/localtime:ro \
    -e UMASK=000 \
    -e PUID=0 \
    -e PGID=0 \
    binhex/arch-sonarr
```

**Notes**

User ID (PUID) and Group ID (PGID) can be found by issuing the following command for the user you want to run the container as:-

```
id <username>
```
___
If you appreciate my work, then please consider buying me a beer  :D

[![PayPal donation](https://www.paypal.com/en_US/i/btn/btn_donate_SM.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=MM5E27UX6AUU4)

[Documentation](https://github.com/binhex/documentation) | [Support forum](http://lime-technology.com/forum/index.php?topic=45848.0)