Gitlab
====
- **goal:** figuring out how to use the **Gitlab C.I** project !


questions
---
**Q:** how to **install** a new C.I server ?
- [link](https://gitlab.com/gitlab-org/gitlab-ci/tree/master)

**Q:** how to **connect** a runner instance to the C.I server ?
- [setting a new runner instance](https://github.com/brownman/CI_RUNNER)

**Q:** what does the runner service run when it being called by the C.I server ?
- a [Docker](https://github.com/gitlabhq/gitlab-ci-runner/blob/master/Dockerfile) script which reboot a virtual machine and pulls the active repo and then run the user's custom script

**Q** how to bind between a runner service and a C.I server ?
- A: on the runner machine: 
```bash
CI_SERVER_URL=https://ci.example.com REGISTRATION_TOKEN=replaceme bundle exec ./bin/setup
```
