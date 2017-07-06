curdir=$(/bin/pwd)
docker-machine ssh default mkdir -p /tmp/logstash/config
docker-machine scp logstash/config/* default:/tmp/logstash/config/.

docker-machine ssh default sudo mkdir -p ${curdir}/logstash/config
docker-machine ssh default sudo cp /tmp/logstash/config/* ${curdir}/logstash/config/.

docker-machine ssh default mkdir -p /tmp/logstash/patterns
docker-machine scp logstash/patterns/* default:/tmp/logstash/patterns/.

docker-machine ssh default sudo mkdir -p ${curdir}/logstash/patterns
docker-machine ssh default sudo cp /tmp/logstash/patterns/* ${curdir}/logstash/patterns/.

docker-machine ssh default mkdir -p /tmp/logstash/logs
docker-machine scp logstash/logs/* default:/tmp/logstash/logs/.

docker-machine ssh default sudo mkdir -p ${curdir}/logstash/logs
docker-machine ssh default sudo cp /tmp/logstash/logs/* ${curdir}/logstash/logs/.


