set -e

docker stop jupyter_lab
docker rm jupyter_lab
docker run -it --name jupyter_lab --network=host --mount src="/home/bfang/notes",target="/notes",type=bind -d --restart=always dev:latest

