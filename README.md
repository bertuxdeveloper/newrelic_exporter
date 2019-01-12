# New Relic Exporter

Prometheus exporter for New Relic data.
Requires a New Relic account.

## Building and running

### Running in a container

	docker run -p 9126:9126 bertuxdeveloper/newrelic_exporter --api.key=********

### From source

	git clone https://github.com/bertuxdeveloper/newrelic_exporter.git --branch release
	cd newrelic_exporter
    make
    ./newrelic_exporter

## Flags

Name               | Description
-------------------|------------
api.key            | API key
api.appIds         | APP ids to filter. Separate multiple List entries with a comma.  Defaults ""
api.metricsName    | APP metricsName to filter. Separate multiple List entries with a comma.  Defaults ""
api.server         | API location.  Defaults to https://api.newrelic.com
api.period         | Period of data to request, in seconds.  Defaults to 60.
api.timeout        | Period of time to wait for an API response in seconds (default 30s)
web.listen-address | Address to listen on for web interface and telemetry.  Port defaults to 9126.
web.telemetry-path | Path under which to expose metrics.
