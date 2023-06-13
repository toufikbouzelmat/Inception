FROM debian:buster 

RUN apt-get update && apt-get upgrade -y && apt-get install -y curl

COPY tools/script.sh /etc

RUN chmod 777 /etc/script.sh 

RUN /etc/script.sh

CMD [ "/usr/bin/cadvisor", "-logtostderr" , "--port=6500" ]