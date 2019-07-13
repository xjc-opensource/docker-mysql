FROM mysql:5.6
COPY percona-xtrabackup-24_2.4.4-1.jessie_amd64.deb /tmp/percona-xtrabackup.deb
RUN apt-get update && apt-get -y install curl lsb-release \
	libdbd-mysql-perl rsync libaio1 libev4 libnuma1\
	&& dpkg -i /tmp/percona-xtrabackup.deb && rm -Rf /tmp/percona-xtrabackup.deb \
	&& rm -rf /var/lib/apt/lists/*
