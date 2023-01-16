# webtop-base
A Docker image based on Linuxserver.io's [docker-webtop](https://github.com/linuxserver/docker-webtop).

The screenlock and screensaver have been disabled in this version for running in HeLx.  Files that have the extension ".sh" can be added in root/helx and they are run when the user connects.
To set the UID, GID, and username that is switched to for the Web UI the PUID, PGID and USER environment variables can be used.
