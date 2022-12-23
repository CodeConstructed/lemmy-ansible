#!/bin/sh

# If text format...
#docker exec postgres \
#  psql --dbname=lemmy --username=lemmy --data-only --file=/var/lib/postgresql/data/backups/2022-12-05T08:35+00:00-lemmy.sql 

# User compressed storage format that only pg_restore understands
docker exec postgres \
  pg_restore \
  --dbname=lemmy \
  --username=lemmy \
  --clean --if-exists \
  /var/lib/postgresql/data/backups/2022-12-05T08:35+00:00-lemmy