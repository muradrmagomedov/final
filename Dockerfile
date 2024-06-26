FROM golang:1.22.2
WORKDIR /app
COPY . .
RUN go mod tidy
RUN go mod download
RUN go build -o /myapp
CMD ["/myapp"]
