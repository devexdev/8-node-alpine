FROM node:8-alpine
RUN apk update
RUN apk upgrade
RUN apk --no-cache add shadow
RUN apk --no-cache add bash
RUN apk --no-cache add ca-certificates
RUN apk --no-cache add wget
RUN sed -i '/password/{s/$/ minlen=8/}' /etc/pam.d/base-password
RUN chage -m 1 -M 90 root
