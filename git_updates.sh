#!/bin/bash
echo "Enter Commit Note" 
read notes
git add .
git commit -m  "$notes"
git push -f
