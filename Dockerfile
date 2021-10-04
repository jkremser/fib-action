FROM alpine:3.10
RUN apk add --no-cache bash
COPY fib.sh /fib.sh
ENTRYPOINT ["/fib.sh"]
