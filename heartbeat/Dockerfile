FROM beat-binaries AS builder

FROM scratch
COPY --from=builder /bin/heartbeat /bin/heartbeat
COPY --from=builder /bin/heartbeat.yml /bin/heartbeat.yml
COPY --from=builder /bin/heartbeat.reference.yml /bin/heartbeat.reference.yml
ENTRYPOINT ["/bin/heartbeat"]
