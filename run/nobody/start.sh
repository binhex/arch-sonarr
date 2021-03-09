#!/bin/bash

# setup environment
export XDG_CONFIG_HOME="/config/xdg"

# run app
/usr/bin/mono --debug /usr/lib/sonarr/bin/Sonarr.exe -nobrowser -data=/config
