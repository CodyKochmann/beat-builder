FROM golang:alpine AS builder

# install build packages
RUN apk update && apk add git bash alpine-sdk libpcap-dev linux-headers
# grab the repo
RUN go get github.com/elastic/beats || true

# create the output directory
# run the build
RUN mkdir -vp -m 700 /scratch/bin /scratch/etc
RUN echo metricbeat filebeat packetbeat heartbeat | xargs -n 1 bash -c 'set -euxo pipefail ; cd /go/src/github.com/elastic/beats/$0 && env GOOS=linux GOMAXPROCS=1 go build -o /scratch/bin/$0 && cp -v ./$0.yml /scratch/etc/ && cp -v ./$0.reference.yml /scratch/etc/'
# tighten the permissions on the output
RUN chmod -vr 700 /scratch && find /scratch -type f -name '*.yml' | chmod -rv 600

# extract the output directory
FROM scratch
COPY --from=builder /scratch/bin /bin
COPY --from=builder /scratch/etc /etc
