# docker-collabora

## Info:
Based on: Ubuntu

## Usage:
`docker rm -f collabora; docker run -d -p 9980:9980 --name collabora --cap-add MKNOD lukasmrtvy/dockercollabora:master`

Login: https://127.0.0.1:9980/loleaflet/dist/admin/admin.html
Credentials: admin:admin

## Badges:
[![Codefresh build status]( https://g.codefresh.io/api/badges/build?repoOwner=lukasmrtvy&repoName=docker-collabora&branch=master&pipelineName=docker-collabora&accountName=muhahacz&type=cf-1)]( https://g.codefresh.io/repositories/lukasmrtvy/docker-collabora/builds?filter=trigger:build;branch:master;service:5b0ee954f38e9242fe415302~docker-collabora)
