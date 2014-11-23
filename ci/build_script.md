the build script
====
- x

questions
----
**Q:** what's going on after a user made a new .git push request ?
- [link](https://gitlab.com/gitlab-org/gitlab-ci-runner/blob/master/lib/build.rb#L96)

**Q:** what's happend before the runner runs the user's build script ?
```bash
cd /gitlab-ci-runner/tmp/builds && git clone git@gitlab_server_fqdn:group/project.git project-1 && cd project-1 && git checkout master
```
