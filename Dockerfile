FROM redhat/ubi8
RUN dnf install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
RUN dnf install -y python3 python3-bugzilla python3-kobo spectool systemtap-sdt-devel libcap-ng-devel make gcc git
RUN dnf install -y http://download-node-02.eng.bos.redhat.com/brewroot/packages/brewkoji/1.26/1.el8/noarch/python3-brewkoji-1.26-1.el8.noarch.rpm  http://download-node-02.eng.bos.redhat.com/brewroot/packages/brewkoji/1.26/1.el8/noarch/brewkoji-1.26-1.el8.noarch.rpm http://download-node-02.eng.bos.redhat.com/brewroot/packages/python-rhmsg/0.11.0/1.el8eng/noarch/python3-rhmsg-0.11.0-1.el8eng.noarch.rpm http://download-node-02.eng.bos.redhat.com/brewroot/packages/python-rhmsg/0.11.0/1.el8eng/noarch/rhmsg-cli-0.11.0-1.el8eng.noarch.rpm http://download-node-02.eng.bos.redhat.com/brewroot/packages/rhpkg/1.41/1.el8eng/noarch/rhpkg-1.41-1.el8eng.noarch.rpm
RUN mkdir /project
WORKDIR /project
COPY . ./
ENTRYPOINT ["/bin/bash", "-c","--", "make rh-mock-rpms && echo finished build && sleep infinity"]
