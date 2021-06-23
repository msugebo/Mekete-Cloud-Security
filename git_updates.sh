#!/bin/bash
echo "Enter Commit Note:"
read commit
git add .
git commit -m  $commit
git push -f
