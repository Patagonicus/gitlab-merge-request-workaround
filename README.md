This is a workaround for [#2889](https://gitlab.com/gitlab-org/gitlab-ce/issues/2889) for people using [sameersbn's docker images](https://github.com/sameersbn/docker-gitlab). All it does is set `max_allowed_packet` in `my.cnf` to 512MB.

Note that you must use the modified mysql image to make it possible to create large merge requests and you need the modified GitLab image if you want to create backups (otherwise mysqldump will complain about packets being too large).

These images are available as automated builds on Docker Hub:

* [MySQL](https://hub.docker.com/r/patagonicus/mysql/)
* [GitLab](https://hub.docker.com/r/patagonicus/gitlab/)
