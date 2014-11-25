Docker
====
- [as ci-runner](https://github.com/sameersbn/docker-gitlab-ci-runner)
- [builds status](https://registry.hub.docker.com/u/brownman/gitlab-ci-runner-nodejs/builds_history/87832/)
------

questions:
-----

Q: what is the C.I workflow - when does the Docker file is being run and how it reports the exit status ?
- x

Q: how to create a Docker file for creating an environment for testing MEAN.io packages ?
- [work in progress](https://registry.hub.docker.com/u/brownman/gitlab-ci-runner-nodejs/)

**Q:** how to inspect the container's logs ?
- [Example: mongodb logs](http://docs.docker.com/examples/mongodb/)

**Q:** how to link between 2 containers ?
- [cross domain](http://docs.docker.com/articles/ambassador_pattern_linking/)
- [local](http://docs.docker.com/userguide/dockerlinks/)

**Q:** how to interact with a container ?
- [interactive](http://docs.docker.com/articles/basics/#running-an-interactive-shell)
```bash
 sudo docker run -i -t ubuntu /bin/bash
```
- [cli](http://docs.docker.com/reference/commandline/cli/#examples_1)

**Q:** which linux box is the lightest  ?
- [link](http://www.busybox.net/live_bbox/live_bbox.html)


answers
---
- [nodejs](https://github.com/bkw/gitlab-ci-runner-nodejs)


updating Dockerfile
----
- [link](https://github.com/ufirstgroup/gitlab-ci-runner-nodejs/commits/master)
- [a fork of mean-Docker](https://github.com/shadowsyntax/Docker_nearStack/blob/master/Dockerfile)

 
