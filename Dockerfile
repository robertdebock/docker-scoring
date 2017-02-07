FROM alpine

RUN apk add --no-cache bc

ADD *.sh /data/
ADD input.txt /data/

CMD /data/report.sh
