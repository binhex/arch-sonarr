#!/bin/bash
# fix for issue https://forums.sonarr.tv/t/mono-5-10-update-broke-sonarr/17800/18

set -e

# copy and unzip the NLog.dll update:
curl -o /tmp/NLog.dll.gz -L http://download.sonarr.tv/hotfixes/regression-mono-5.10/NLog.dll.gz
gunzip /tmp/NLog.dll.gz
cp -f /tmp/NLog.dll /usr/lib/sonarr/NLog.dll

