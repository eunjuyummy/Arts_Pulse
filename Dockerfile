FROM ubuntu:latest

RUN apt-get update && apt-get intall -y \
build-essential \ git \ curl \ curl \ wget \ nano \ && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /build
WORKDIR /build

#COPY . .
#RUN go mod tidy && go mod vendor
#RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o bin/server ./cmd/server

#RUN mkdir -p /dist
#WORKDIR /dist
#RUN cp /build/bin/server ./server

#COPY --chown=0:0 --from=builder /dist /app/
EXPOSE 8888

#ENTRYPOINT ["/app/server"]
#CMD ["-port", "9110"]
