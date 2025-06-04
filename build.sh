#!/bin/bash

set -euo pipefail

DIR="dist"
npm run build
git add .
git commit -m "build"
git push origin main
git push origin `git subtree split --prefix $DIR main`:gh-pages --force