# lockrun builder

The [lockrun](http://www.unixwiz.net/tools/lockrun.html) builder is for building lockrun and packaging it up. Right now it supports .debs, submit pull requests for other package formats.

## Running it.

### Install Docker:

See [DOCKER.md](./DOCKER.md).

### 2. Clone this repo

    $ git clone git@github.com:wjessop/build_lockrun.git
    $ cd build_lockrun

## Usage

    $ VERSION=1.0.0 ./build.sh
    $ # Note the last built container id and use it in the next command
    $ docker cp <container id>:/tmp/lockrun-1.0.0~37s-x86_64.deb .

## How to contribute

Here's the most direct way to get your work merged into the project:

1. Fork the project
2. Clone down your fork
3. Create a feature branch
4. Add your feature + tests
5. Document new features in the README
6. Make sure everything still passes by running the tests
7. If necessary, rebase your commits into logical chunks, without errors
8. Push the branch up
9. Send a pull request for your branch

## Authors

* [Will Jessop](mailto:will@willj.net)

## LICENSE

lockrun.c contains it's own license, See LICENSE.md for the license for everything else.
