touch acme.json
chmod 600 acme.json

##Login to GCR
/snap/bin/gsutil cp gs://upo-scripts/docker/gcr.json .
cat gcr.json | docker login -u _json_key --password-stdin https://eu.gcr.io

docker-compose up -d
docker-compose -f nginx.yml up -d
docker-compose -f portainer.yml up -d