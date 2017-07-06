curdir=$(/bin/pwd)
docker-machine scp prometheus.yml default:/tmp/.
docker-machine ssh default sudo mkdir -p ${curdir}
docker-machine ssh default sudo cp /tmp/prometheus.yml ${curdir}/.

