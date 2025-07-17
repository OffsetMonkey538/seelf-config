#!/bin/sh

pnpm run build
tar -cvf archive.tar.gz dist docker-compose.yml
curl -i -X POST -H "Authorization: Bearer $SEELF_TOKEN" -F environment=$SEELF_ENVIRONMENT -F archive=@archive.tar.gz $SEELF_APPLICATION_URL
