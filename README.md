[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/alexanderrichards/ganga?logo=docker)](https://hub.docker.com/r/alexanderrichards/ganga/builds)

![Docker Image Version (latest semver)](https://img.shields.io/docker/v/alexanderrichards/ganga?label=version%20%28Ganga-Dirac%20UI%29&logo=docker&sort=semver)
# ganga
To run a container from this image the globus grid cert/key directory must be mounted as a volume. To do this use the following.

```bash
sudo docker run -it -v <grid cert/key dir>:/root/.globus:ro alexanderrichards/ganga
```

If your using udocker to run in userspace, this becomes:

```bash
udocker run --volume=<grid cert/key dir>:/root/.globus alexanderrichards/ganga
```

![Ganga Image Usage](examples/image_usage.gif)
