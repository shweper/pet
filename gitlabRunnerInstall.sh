# docker volume create gitlab-runner-config

sudo docker run -d --name gitlab-runner --cpus="1" --memory="500m" --restart always -v /var/run/docker.sock:/var/run/docker.sock -v gitlab-runner-config:/etc/gitlab-runner gitlab/gitlab-runner:latest

sudo docker exec -it gitlab-runner gitlab-runner register -n \
  --url "http://172.18.50.62/gitlab" \
  --registration-token "GR1348941_KSDVrTj3Yr5Gd7HD_Uo" \
  --executor docker \
  --description "Runner" \
  --docker-image "docker:24.0.5" \
  --docker-volumes /var/run/docker.sock:/var/run/docker.sock
#sudo docker exec -it gitlab-runner gitlab-runner register