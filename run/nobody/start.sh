#!/usr/bin/dumb-init /bin/bash

# setup environment
export XDG_CONFIG_HOME="/config/xdg"

# run app
/usr/lib/sonarr/bin/Sonarr -nobrowser -data=/config
