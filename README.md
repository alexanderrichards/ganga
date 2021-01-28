[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/alexanderrichards/ganga)](https://hub.docker.com/r/alexanderrichards/ganga/builds)
![Docker Image Version (latest by date)](https://img.shields.io/docker/v/alexanderrichards/ganga?logo=docker&style=plastic)
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
