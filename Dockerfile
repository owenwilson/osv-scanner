FROM alpine:3.18
RUN apk add osv-scanner
RUN apk add python3
RUN mkdir /var/www/
#COPY ./grype-report.tmpl /var/www
WORKDIR /var/www
RUN echo "<h1>Osv-Scanner is working</h1>" > index.html
CMD ["python3", "-m", "http.server"]
