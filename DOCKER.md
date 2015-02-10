## Installing docker

### Linux

[Follow the instructions here](http://docs.docker.io/installation/)

### OS X

On [this page](http://docs.docker.io/installation/mac/) follow these tasks:

 * Installing VirtualBox
 * Installing boot2docker with Homebrew

Next run:

    $ boot2docker init
    $ boot2docker up

You will get a message like this:

    To connect the docker client to the Docker daemon, please set:
    export DOCKER_HOST=tcp://192.168.59.104:2376
    export DOCKER_CERT_PATH=/Users/will/.boot2docker/certs/boot2docker-vm
    export DOCKER_TLS_VERIFY=1

Run the exports you are given. Now run this command (may take a few minutes):

    boot2docker down
    for i in {49000..49900}; do
     VBoxManage modifyvm "boot2docker-vm" --natpf1 "tcp-port$i,tcp,,$i,,$i";
     VBoxManage modifyvm "boot2docker-vm" --natpf1 "udp-port$i,udp,,$i,,$i";
    done

Now start the boot2docker image:

    $ boot2docker start

You can now run docker commands locally on your mac.

## Running it

If the VM got shut down and you want to run build_ruby first start boot2docker:

    boot2docker up

Next, run the exports you are given. Run build_ruby as normal.
