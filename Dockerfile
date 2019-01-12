FROM debian as gobuilder
RUN apt-get update && apt-get install -y curl make git 
COPY . /src
RUN cd /src && make 

FROM debian 
RUN apt-get update && apt-get install -y curl 
#RUN apk --no-cache add ca-certificates
COPY --from=gobuilder /src/newrelic_exporter .
EXPOSE 9126
ENTRYPOINT ["./newrelic_exporter"]