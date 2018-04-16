#!/bin/bash

# setup environment
export MONO_TLS_PROVIDER=legacy
export XDG_CONFIG_HOME="/config/xdg"

# run app
/usr/bin/sonarr -nobrowser -data=/config
