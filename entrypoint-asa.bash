#!/bin/bash
source ~/.profile
source ~/.bash_profile
cd /appdata/asa/asa/ShooterGame/Binaries/Win64
env WINEARCH=win64 WINEDEBUG=-all WINEPREFIX=/wineprefix wine /appdata/asa/asa/ShooterGame/Binaries/Win64/ArkAscendedServer.exe -noconsole -path Z:\\appdata\\asa\\asa -ignorelastsession