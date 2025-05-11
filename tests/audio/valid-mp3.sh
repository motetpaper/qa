#!/usr/bin/env bash
##
## valid-mp3.sh
### validate mp3 file format using built-in file command

## EXAMPLE: valid mp3 file
## file foo.mp3
## foo.mp3: MPEG ADTS, layer III, v2,  64 kbps, 24 kHz, Monaural

### add valid mp3 to valid.log
### otherwise, add invalid mp3 files to invalid.log
fmt="MPEG"
for f in *.mp3; do
  if [[ $fmt == $(file $f | cut -d' ' -f2) ]]; then
    echo "$f" >> valid.log
  else
    echo "$f" >> invalid.log
  fi
done
