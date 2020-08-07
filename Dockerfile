FROM alpine:latest

RUN apk update
RUN apk add --no-cache nodejs
RUN apk add --no-cache yarn
 
ADD ./airpc /airpc
ADD ./entrypoint.sh /entrypoint.sh

WORKDIR /airpc

ENTRYPOINT [ "/entrypoint.sh" ]