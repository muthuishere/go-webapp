FROM golang:latest 

LABEL version="1.0"

RUN mkdir /go/src/app

RUN go get -u github.com/golang/dep/cmd/dep

ADD ./main.go /go/src/app
COPY ./Gopkg.toml /go/src/app

WORKDIR /go/src/app 


RUN dep ensure 
RUN go test -v 
RUN go build

EXPOSE 3000
CMD ["./app"]