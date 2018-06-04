#!/bin/sh
if [ -n "$LOCK_FILE" ]; then
    flock -x "$LOCK_FILE" read &
fi
retcode=1
echo 'Waiting for display to open...'
until [ $retcode -eq 0 ]; do
  xset -display browser:99 b off > /dev/null 2>&1
  retcode=$?
  if [ $retcode -ne 0 ]; then
    echo 'Sleeping before next attempt...'
    sleep 0.1
  fi
done
echo 'Connected!'

# Keep alive
ping localhost > /dev/null
