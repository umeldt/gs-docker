FROM java:8

WORKDIR /
RUN wget -qO gs-shell.jar https://github.com/jericks/geoserver-shell/releases/download/0.3.0/gs-shell-0.3.0.jar

ENTRYPOINT ["java", "-jar", "gs-shell.jar"]

