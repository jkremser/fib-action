FROM alpine:3.10
COPY fib.sh /fib.sh
ENTRYPOINT ["/fib.sh"]
