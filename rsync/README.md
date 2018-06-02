# README.md

## Installation

Set the name of your real backup server:

```shell
RSYNC_BACKUP_SERVER=your.real.backup.server.name
```

```shell
mkdir -p ~/bin/private/rsync
cd ~/bin/rsync
cp * ~/bin/private/rsync/.
cd ~/bin/private/rsync
cp rsync-some.backup.server-backup.sh rsync-${RSYNC_BACKUP_SERVER}-backup.sh
cp rsync-some.backup.server-excludes.txt rsync-${RSYNC_BACKUP_SERVER}-excludes.txt



