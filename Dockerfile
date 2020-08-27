FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y libxtst6 libfuse2 libgtk2.0-0 libcanberra-gtk-module libglu1-mesa xdg-utils libglapi-mesa libx11-xcb1 fonts-cns11643-sung gvfs gvfs-bin
COPY ./wps-office_11.1.0.9615_amd64.deb /opt
RUN dpkg -i /opt/wps-office_11.1.0.9615_amd64.deb
RUN rm -rf wps-office_11.1.0.9615_amd64.deb
ENV DISPLAY :0
ENV QT_X11_NO_MITSHM 1