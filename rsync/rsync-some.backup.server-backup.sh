SOURCE_DIR=${HOME}/
TARGET_SERVER=some.backup.server.name
TARGET_DIR=${HOME}/backup
EXCLUDES_FILE=${HOME}/bin/rsync/${TARET_SERVER}-excludes.txt

# ssh -t ${USER}@${TARGET_SERVER} "mkdir -p ${TARGET_DIR} && /bin/bash && exit"
rsync -a -H -P --exclude-from=$HOME/bin/rsync/${TARGET_SERVER}-excludes.txt $HOME/ ${TARGET_SERVER}:${TARGET_DIR}
