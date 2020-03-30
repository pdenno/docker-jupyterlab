# podenno/jupyterlab [@DockerHub](https://hub.docker.com/r/podenno/jupyterlab/) | [@GitHub](https://github.com/pdenno/docker-jupyterlab)

JupyterLab in Docker. 
Note: Python packages are managed using pip instead of conda.


## Usage in Linux/Unix

```
docker run -it \
     --log-opt max-size=50m \
     -p 8889:8889 \
     -e DOCKER_USER=$(id -un) \
     -e DOCKER_USER_ID=$(id -u) \
     -e DOCKER_PASSWORD=$(id -un) \
     -e DOCKER_GROUP_ID=$(id -g) \
     -e DOCKER_ADMIN_USER=$(id -un) \
     -v $(pwd):/workdir \
     -v $(dirname $HOME):/home_host \
     podenno/jupyterlab /scripts/sys/init.sh
```
