#!/bin/bash

runuser -l wine bash -c 'steamcmd +login anonymous +@sSteamCmdForcePlatformType windows +force_install_dir /appdata/asa/asa +app_update 2430930 +quit'
runuser -l wine bash -c '/entrypoint-asa.bash'