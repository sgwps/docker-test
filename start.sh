chmod 777 entrypoint.sh
docker build . -t jupyter
docker run --rm --name test -p 80:8000 jupyter 