touch acme.json
chmod 600 acme.json
docker network create web

##Login to GCR
/snap/bin/gsutil cp gs://upo-scripts/docker/gcr.json .
cat gcr.json | docker login -u _json_key --password-stdin https://eu.gcr.io

docker-compose up  -d
