# OpenTelemetry Collector Demo, adapted for OPA usage

*IMPORTANT:* This is a pre-released version of the OpenTelemetry Collector Contrib.

This demo presents the typical flow of observability data with multiple
OpenTelemetry Collectors deployed:

- The OTel Collector then sends the data to the appropriate backend, in this demo
 Jaeger, Zipkin, and Prometheus;

This demo uses `docker-compose` and by default runs against the 
`otel/opentelemetry-collector-contrib-dev:latest` image. To run the demo, switch
to the `examples/demo` folder and run:

```shell
docker-compose up -d
```

The demo exposes the following backends:

- Jaeger at http://0.0.0.0:16686
- Zipkin at http://0.0.0.0:9411
- Prometheus at http://0.0.0.0:9090 

Notes:

- It may take some time for the application metrics to appear on the Prometheus
 dashboard;

To clean up any docker container from the demo run `docker-compose down` from 
the `examples/demo` folder.
