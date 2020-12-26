This READYNAS docker only binary files repository. Present At least 19.03 docker is needed for Home Assistant, but nowhere was available so own binary 19.03.

This is not install, only binary, so install older version, look where is present(//which), rename it and copy this one or make symbolic link for it. Up to you.


Wiki:
1. Git clone: https://github.com/docker/docker-ce
2. Cheackout to latest possible tag and create branch for it: git checkout -b neatgear19_03_9 v19.03.9
3. To compile you need running docker already in background
4. make static DOCKER_BUILD_PKGS=static-linux DOCKER_BUILDKIT=0

If any error there is possbility to items are missing so move to other tag.
