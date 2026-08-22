# Recover docker-cli-rnapp-19.03.9 from Btrfs snapshot

This procedure restores `/apps/docker-cli-rnapp` from a read-only snapshot.

Tested snapshot example from this upgrade prep:

- `/apps/.snapshots/apps-backup-20260819-190907`

## Prerequisites

- SSH access as `root` to the ReadyNAS host.
- A valid snapshot under `/apps/.snapshots`.

## 1) Pick the snapshot

```sh
ls -lah /apps/.snapshots
SNAP=/apps/.snapshots/apps-backup-20260819-190907
```

If you need a different one, replace `SNAP` with the snapshot you want.

## 2) Stop Docker cleanly

```sh
systemctl stop docker
```

## 3) Move current docker-cli-rnapp aside (safety copy)

```sh
ts=$(date +%Y%m%d-%H%M%S)
mv /apps/docker-cli-rnapp /apps/docker-cli-rnapp.pre-restore-$ts
```

## 4) Restore docker-cli-rnapp from snapshot

```sh
btrfs subvolume snapshot "$SNAP/docker-cli-rnapp" /apps/docker-cli-rnapp
```

This creates a writable restored subvolume at `/apps/docker-cli-rnapp`.

## 5) Verify restore

```sh
ls -lah /apps/docker-cli-rnapp
ls -lah /apps/docker-cli-rnapp/bin
cat /apps/docker-cli-rnapp/config.xml
```

Confirm that `config.xml` reflects the expected Docker package version (for example, `19.03.9`).

## 6) Start Docker and validate

```sh
systemctl start docker
docker -v
docker ps
```

## 7) Roll back the restore (if needed)

If something is wrong, stop Docker and switch back to the safety copy:

```sh
systemctl stop docker
btrfs subvolume delete /apps/docker-cli-rnapp
mv /apps/docker-cli-rnapp.pre-restore-<timestamp> /apps/docker-cli-rnapp
systemctl start docker
```

## Notes

- Snapshot restore preserves ownership and permissions as stored in Btrfs.
- Do not delete the safety copy until you verify Docker and containers are healthy.
