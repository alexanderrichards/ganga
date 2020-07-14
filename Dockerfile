# syntax = docker/dockerfile:1.0-experimental
FROM centos:7
ARG dirac_version=v6r22p26
ARG ganga_version=8.3.3

RUN yum install -y wget python3
RUN python3 -m pip install --upgrade pip setuptools wheel

RUN mkdir /root/dirac_ui
RUN wget -np -O /root/dirac_ui/dirac-install https://raw.githubusercontent.com/DIRACGrid/DIRAC/integration/Core/scripts/dirac-install.py
RUN chmod u+x /root/dirac_ui/dirac-install

WORKDIR /root/dirac_ui
RUN /root/dirac_ui/dirac-install -r $dirac_version -i 27 -g v14r1
RUN rm -f /root/dirac_ui/dirac-install
RUN --mount=type=secret,id=proxy,dst=/tmp/x509up_u0 . /root/dirac_ui/bashrc && dirac-configure -F -S GridPP -C dips://dirac01.grid.hep.ph.ic.ac.uk:9135/Configuration/Server -I

WORKDIR /root
RUN python3 -m pip install ganga==$ganga_version
RUN yes | ganga -g
RUN echo -e "[DIRAC]\nDiracEnvSource = /root/dirac_ui/bashrc" > /root/.gangarc
RUN echo -e "[Configuration]\nRUNTIME_PATH=GangaDirac" >> /root/.gangarc
RUN mkdir -p /root/gangadir
RUN echo $ganga_version > /root/gangadir/.used_versions

CMD ["ganga"]
