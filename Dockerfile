FROM distributedio/titan:latest as titan
FROM alpine:latest

COPY --from=titan /titan/bin/titan /usr/local/bin/titan

WORKDIR /titan/conf
COPY --from=titan /titan/conf/titan.toml /titan/conf/titan.toml

WORKDIR /titan
COPY entrypoint.sh /titan

RUN mkdir -p /titan/logs && \
    touch /titan/logs/titan.log && \
    chmod +x entrypoint.sh && \
    chmod +x /usr/local/bin/titan

EXPOSE 7345

ENTRYPOINT ["/titan/entrypoint.sh"]
