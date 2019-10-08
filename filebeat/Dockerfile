FROM beat-binaries AS builder

FROM scratch
COPY --from=builder /bin/filebeat /bin/filebeat
COPY --from=builder /etc/filebeat* /etc
CMD ["/bin/filebeat"]
