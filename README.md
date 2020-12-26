This READYNAS docker only binary files repository. Present At least 19.03 docker is needed for Home Assistant, but nowhere was available so own binary 19.03.

This is not install, only binary, so install older version, look where is present(//which), rename it and copy this one or make symbolic link for it. Up to you.


Wiki:
1. Git clone: https://github.com/docker/docker-ce
2. Cheackout to latest possible tag and create branch for it: git checkout -b neatgear19_03_9 v19.03.9
3. To compile you need running docker already in background
4. make static DOCKER_BUILD_PKGS=static-linux DOCKER_BUILDKIT=0

If any error there is possbility to items are missing so move to other tag.


Misisng package logrus in docker-ce/components/engine/hack/dockerfile/install/gotestsum.installer in after change:
cat gotestsum.installer
#!/bin/sh

GOTESTSUM_COMMIT='v0.3.5'

install_gotestsum() {
        echo "Installing gotestsum version $GOTESTSUM_COMMIT"
        go get -d gotest.tools/gotestsum
        go get -d github.com/sirupsen/logrus
        cd "$GOPATH/src/gotest.tools/gotestsum"
        git checkout -q "$GOTESTSUM_COMMIT"
        go build -buildmode=pie -o "${PREFIX}/gotestsum" 'gotest.tools/gotestsum'

