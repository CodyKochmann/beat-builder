FROM beat-binaries AS builder

FROM scratch
COPY --from=builder /bin/packetbeat /bin/packetbeat
COPY --from=builder /bin/packetbeat.yml /bin/packetbeat.yml
COPY --from=builder /bin/packetbeat.reference.yml /bin/packetbeat.reference.yml
ENTRYPOINT ["/bin/packetbeat"]
