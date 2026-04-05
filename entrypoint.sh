#!/bin/bash

echo "==============="

git config --global user.name "${INPUT_NAME}"
git config --global user.email "${INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace

cd /github/workspace

python3 /usr/bin/feed.py

git add -A
git commit -m "Update Feed" || echo "No changes"
git push

echo "==============="