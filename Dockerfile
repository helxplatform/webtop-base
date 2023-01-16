# FROM lscr.io/linuxserver/webtop:ubuntu-mate
# amd64-ubuntu-mate-version-8d2fdc51 2023/01/14
FROM lscr.io/linuxserver/webtop:amd64-ubuntu-mate-version-8d2fdc51

# Install dconf program to disable the screen lock and insert line in
# startwm.sh to run helx initialization scripts.
RUN apt update && apt -y install dconf-cli pwgen && \
    sed -i '/#!\/bin\/bash$/a /helx-init.sh' /defaults/startwm.sh

# Any files in root/helx/ that have the ".sh" extension are run when the user connects.
# To run in a certain order, name them appropriately.
COPY /root /
RUN rm -rf /app && userdel abc
