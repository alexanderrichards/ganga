[![CI build test workflow](https://github.com/alexanderrichards/ganga/actions/workflows/build-test.yml/badge.svg)](https://github.com/alexanderrichards/ganga/actions/workflows/build-test.yml)
[![CD release build and publish](https://github.com/alexanderrichards/ganga/actions/workflows/release-build.yml/badge.svg)](https://github.com/alexanderrichards/ganga/actions/workflows/release-build.yml)

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
