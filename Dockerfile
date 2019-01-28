FROM golang:1.11-alpine
RUN apk update && \
    apk upgrade && \
    apk add --update --no-cache drill git coreutils bash gcc g++&& \
	  rm -rf /var/cache/apk/* 
RUN go get github.com/molabi/sangrenel
RUN go install github.com/molabi/sangrenel
WORKDIR /go/bin
CMD ["sh", "-c","./sangrenel $OPTIONS"]
