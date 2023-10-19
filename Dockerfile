# syntax = docker/dockerfile:1
ARG dirac_version
FROM alexanderrichards/dirac_ui:${dirac_version}
ARG ganga_version

RUN yum install -y epel-release
RUN yum install -y python3 root python3-root
RUN python3 -m pip install --upgrade pip setuptools wheel

WORKDIR /root
RUN python3 -m pip install ganga==$ganga_version
RUN echo -e "[DIRAC]\nDiracEnvSource = /root/dirac_ui/diracos/diracosrc" > /root/.gangarc
RUN echo -e "[Configuration]\nRUNTIME_PATH=GangaDirac" >> /root/.gangarc
RUN yes | ganga -g
RUN mkdir -p /root/.cache/Ganga
RUN echo $ganga_version > /root/.cache/Ganga/.used_versions

COPY startup.sh /root/gangastartup.sh
CMD ["/root/gangastartup.sh"]
