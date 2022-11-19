FROM nginx:1.23

COPY cert.crt /etc/nginx/cert.crt
COPY cert.key /etc/nginx/cert.key
COPY nginx-default.conf /etc/nginx/conf.d/default.conf
COPY run.sh /opt/run.sh

CMD ["/bin/bash", "/opt/run.sh"]
