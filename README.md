## docker-cli-rnapp

A repository containing Docker static binaries packaged for ReadyNAS.

## Available packages

- Latest: [`releases/docker-cli-rnapp_20.10.24_amd64.deb`](releases/docker-cli-rnapp_20.10.24_amd64.deb)
- Legacy: [`releases/docker-cli-rnapp_19.03.9_amd64.deb`](releases/docker-cli-rnapp_19.03.9_amd64.deb)

The Docker 20.10.24 binaries came from Docker's official static binary tarball:

https://download.docker.com/linux/static/stable/x86_64/docker-20.10.24.tgz

## Installation options

### Install the files manually

1. Turn off Docker CE CLI in ReadyNAS OS under **Apps**.
2. Download and unpack the desired Docker static binary tarball, then copy its contents to `/usr/bin/`.
3. Turn on the Docker CE CLI app in ReadyNAS OS.

An old version number might still appear in the ReadyNAS interface, but the running binary is the manually installed version.

### Install the Debian package

1. Install Docker CLI from the ReadyNAS store.
2. Turn off Docker CE CLI in ReadyNAS OS under **Apps**.
3. Download the latest package: [`releases/docker-cli-rnapp_20.10.24_amd64.deb`](releases/docker-cli-rnapp_20.10.24_amd64.deb).
4. In ReadyNAS OS, go to **Apps > Upload** and install `docker-cli-rnapp_20.10.24_amd64.deb`.

The installed files are placed in `/apps/docker-cli-rnapp/bin` and linked into `/usr/bin`. Original files in `/usr/bin` are diverted to files ending in `.disabled`.

## Build the Debian packages

1. Follow the [ReadyNAS SDK VM instructions](https://github.com/ReadyNAS/sdk/wiki/Developing-Apps-with-VM).
2. Connect to the VirtualBox instance with `ssh netgear@127.0.0.1` (password: `netgear`).
3. Clone this repository on the ReadyNAS development VM with the SDK.
4. Run in Bash `./build-all.sh` to build both packages. It also performs the per-project cleanup automatically.

Generated Debian packages are placed in the `releases` directory.

## Helpful links

- [ReadyNAS SDK](https://github.com/ReadyNAS/sdk)
- [ReadyNAS SDK Wiki](https://github.com/ReadyNAS/sdk/wiki)
- [Other helpful documentation](https://github-wiki-see.page/m/ReadyNAS/sdk/wiki_index)

## Contributions

- https://github.com/Mhynlo/readynas-docker-cli
- https://github.com/jdnowak/readynas_docker
