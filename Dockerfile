FROM ubuntu
RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install -y build-essential ruby2.0 ruby2.0-dev
RUN /usr/bin/gem2.0 install --no-ri --no-rdoc fpm
ADD lockrun_build_version /tmp/lockrun_build_version
ADD lockrun.c /tmp/lockrun.c
RUN gcc /tmp/lockrun.c -o /tmp/lockrun
WORKDIR /
RUN fpm \
		--url https://github.com/wjessop/build_lockrun \
		-s dir \
		-t deb \
		-n lockrun \
		-a x86_64 \
		-v `cat /tmp/lockrun_build_version` \
		--iteration 37s		 \
		-C /tmp \
		--prefix /usr/local/bin \
		-d libc6-dev \
		-p /tmp/lockrun-`cat /tmp/lockrun_build_version`~37s-x86_64.deb \
		lockrun
