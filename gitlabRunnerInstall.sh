# docker volume create gitlab-runner-config

sudo docker run -d --name gitlab-runner --cpus="1" --memory="500m" --restart always \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v gitlab-runner-config:/etc/gitlab-runner \
    gitlab/gitlab-runner:latest

sudo docker exec -it gitlab-runner gitlab-runner register