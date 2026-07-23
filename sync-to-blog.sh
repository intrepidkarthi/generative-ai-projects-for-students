#!/bin/sh
# Deploy this course to intrepidkarthi.com/genai (vendored into the blog repo).
# certificate.html is instructor-issued and deliberately NOT deployed publicly.
rsync -a --delete --delete-excluded --exclude ".git" --exclude "certificate.html" --exclude "sync-to-blog.sh" \
  "$(dirname "$0")/" /Users/karthikeyanng/CascadeProjects/intrepidkarthi/public/genai/
echo "synced → blog public/genai (certificate.html excluded)"
