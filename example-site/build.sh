#!/bin/sh

pnpm run build
tar -cf archive.tar.gz dist docker-compose.yml
