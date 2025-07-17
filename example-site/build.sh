#!/bin/sh

pnpm run build
tar -cvf archive.tar.gz dist docker-compose.yml
