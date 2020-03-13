FROM ibmhuoqif/hpvsop-base-ssh:1.2.0
COPY demoInit.sh /usr/bin
RUN chmod +x /usr/bin/demoInit.sh
RUN apt-get update && apt-get install nginx -y
# Execute initialization code
ENTRYPOINT ["/usr/bin/demoInit.sh"]
