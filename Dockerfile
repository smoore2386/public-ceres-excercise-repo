
FROM golang as build_stage
WORKDIR /app
COPY . .
RUN  go get github.com/go-chi/chi gopkg.in/mgo.v2 github.com/thedevsaddam/renderer
RUN go build -o main

FROM golang
WORKDIR /root/
COPY --from=build_stage /app/main .
EXPOSE 9000
CMD ["./main"] 