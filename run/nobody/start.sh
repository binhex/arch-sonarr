#!/bin/bash

# setup environment
export MONO_TLS_PROVIDER=legacy

# run app
/usr/bin/sonarr -nobrowser -data=/config
