#!/bin/bash

repo="/home/mayank/Obsidian/"
if [[ "$(git -C "$repo" status --porcelain=v1 2>/dev/null | wc -l)" -ne 0 ]]; then
  git -C "$repo" add .
  git -C "$repo" commit -m "sync"
  git -C "$repo" push
  echo "Pushed local changes."
elif [[ "$(git fetch && git -C "$repo" status -sb)" =~ "behind" ]]; then
  git -C "$repo" pull -p
  echo "Pulled remote changes."
else
  echo "Remote and local in sync."
fi
