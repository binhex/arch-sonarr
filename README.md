**Application**

[Sonarr](https://sonarr.tv/)

**Application description**

Sonarr is a PVR for Usenet and BitTorrent users. It can monitor multiple RSS feeds for new episodes of your favorite shows and will grab, sort and rename them. It can also be configured to automatically upgrade the quality of files already downloaded when a better quality format becomes available.

**Build notes**

Latest stable Sonarr release from Arch Linux AUR using Packer to compile.

**Usage**
```
docker run -d \
	-p 8989:8989 \
	-p 9897:9897 \
	--name=<container name> \
	-v <path for data files>:/data \
	-v <path for config files>:/config \
	-v /etc/localtime:/etc/localtime:ro \
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
	-v /apps/docker/sabnzbd/watched:/data \
	-v /apps/docker/sonarr:/config \
	-v /etc/localtime:/etc/localtime:ro \
	binhex/arch-sonarr
```

**Notes**

N/A

[Support forum](http://lime-technology.com/forum/index.php?topic=38055.0)