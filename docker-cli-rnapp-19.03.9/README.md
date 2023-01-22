## docker-cli-rnapp
A repository with only the binary files for updating Docker on ReadyNAS.

## Installation Options:

### Install files manually:
1. Turn off Docker CE CLI via ReadyNAS OS --> Apps. 
2. Unpack docker-19.03.9.tgz (tar -xvzf docker-19.03.9.tgz) and copy it's contents to /usr/bin/
3. Turn on Docker CE CLI app in ReadyNAS OS.
### Note:
- An old version number is unfortunately still shown, but the running binary is the manually installed version.

### Install files with debian package
1. Install Docker CLI from ReadyNAS store
2. Turn off Docker CE CLI via ReadyNAS OS --> Apps.
3. Update files by downloading `releases\docker-cli-rnapp_19.03.9_amd64.deb`
4. Install downloaded `docker-cli-rnapp_19.03.9_amd64.deb` file in ReadyNAS OS --> Apps --> Upload
### Note:
- Version number will be 19.03.0 in ReadyNAS Admin Apps page.
- Installed files will be located in `/apps/docker-cli-rnapp/bin` and linked in /usr/bin
- Original files in /usr/bin are diverted to *.disabled
### Build DEB package:
1. Follow steps here: https://github.com/ReadyNAS/sdk/wiki/Developing-Apps-with-VM
2. SSH to virtualbox instance:  ssh netgear@127.0.0.1  (password: netgear)
2. Clone this git repo on the ReadyNAS DEV VM with SDK.
3. Run build.sh script to build
4. Run clean.sh script to clean up generated files
5. Generated deb package will be in releases directory
### Helpful Links:
- [ReadyNAS SDK](https://github.com/ReadyNAS/sdk)
- [ReadyNAS SDK Wiki](https://github.com/ReadyNAS/sdk/wiki)
- [Other helful documentation](https://github-wiki-see.page/m/ReadyNAS/sdk/wiki_index)
 
## Contributions:
- https://github.com/Mhynlo/readynas-docker-cli
- https://github.com/jdnowak/readynas_docker