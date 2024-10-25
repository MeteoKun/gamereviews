#!/usr/bin/env sh

#abort on errors
set -e

env PUBLIC_URL=https://github.com/MeteoKun/gamereviews npm run build

cd build

git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:MeteoKun/gamereviews.git main:gh-pages