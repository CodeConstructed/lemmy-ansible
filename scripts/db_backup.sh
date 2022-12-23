#!/bin/sh

# Full dump with directory to support compression and parallelism
docker exec postgres \
  pg_dump \
  --dbname=lemmy \
  --username=lemmy \
  --format=directory \
  --file=/var/lib/postgresql/data/backups/$(date -Iminutes)-lemmy 

# User text format
#docker exec postgres \
#  /usr/local/bin/pg_dump --dbname=lemmy --username=lemmy --file=/var/lib/postgresql/data/backups/$$(date -Iminutes)-lemmy.sql
