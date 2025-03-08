# wc-graf-prom

## Components

1. Grafana
2. Prometheus
3. Node-Exporter

## Data Source Config:

Prometheus Data Source for local: http://host.docker.internal:9090 (Add the grafana service to the "monitoring" network if you don't want to have to do this)


## Run (Detached):
docker-compose up -d

## Stop:
docker-compose down

## Run (Tailed logs):
docker-compose up (Ctrl-c to exit)