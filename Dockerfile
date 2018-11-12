FROM java:8

WORKDIR /

# ADD geoserver.local.crt /geoserver.local.crt
# RUN keytool -noprompt -import -v -trustcacerts -alias geoserver.local -file geoserver.local.crt -keystore /etc/ssl/certs/java/cacerts -keypass ffffff -storepass changeit

RUN wget -qO gs-shell.jar https://github.com/jericks/geoserver-shell/releases/download/0.3.0/gs-shell-0.3.0.jar

ENTRYPOINT ["java", "-jar", "gs-shell.jar"]

