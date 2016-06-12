FROM java:7-jre
ENV CATALINA_HOME /opt/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
ADD apache-tomcat-7.0.69.tar /opt
RUN mv /opt/apache-tomcat-7.0.69 /opt/tomcat
EXPOSE 8080
#EXPOSE 8009
WORKDIR $CATALINA_HOME
# Launch Tomcat
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
