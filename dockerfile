FROM alpine:latest
EXPOSE 8888:8000
RUN apk update && apk add git nano npm bash
RUN export EDITOR=/usr/bin/nano
RUN git clone https://github.com/ParrotDevelopers/WebOasis.git
WORKDIR /WebOasis
RUN npm install && npm run build
ENTRYPOINT ["npm", "run", "serve"]
