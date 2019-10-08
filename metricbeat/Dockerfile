FROM beat-binaries AS builder

FROM scratch
COPY --from=builder /bin/metricbeat /bin/metricbeat
COPY --from=builder /bin/metricbeat.yml /bin/metricbeat.yml
COPY --from=builder /bin/metricbeat.reference.yml /bin/metricbeat.reference.yml
ENTRYPOINT ["/bin/metricbeat"]
