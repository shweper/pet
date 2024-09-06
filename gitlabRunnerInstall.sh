#!/usr/bin/bash
# docker volume create gitlab-runner-config
if [ -n "$1" ]; then
  sudo docker run -d --name gitlab-runner --cpus="1" --memory="500m" --restart always -v /var/run/docker.sock:/var/run/docker.sock -v gitlab-runner-config:/etc/gitlab-runner gitlab/gitlab-runner:latest

  IPHOST=$(hostname  -I | cut -f1 -d' ')

  sudo docker exec -it gitlab-runner gitlab-runner register -n \
    --url "http://${IPHOST}/gitlab" \
    --registration-token "${1}" \
    --executor docker \
    --description "Runner" \
    --docker-image "docker:24.0.5" \
    --docker-volumes /var/run/docker.sock:/var/run/docker.sock
else
 echo "Not found parameters: registration-token"
fi


#sudo docker exec -it gitlab-runner gitlab-runner register