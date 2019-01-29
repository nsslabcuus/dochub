#!/bin/bash

git_push() {
  cd ./_book
  git init
  git remote add origin https://${REF}
  git add .
  git commit -m "Updated By Travis-CI With Build $TRAVIS_BUILD_NUMBER For Github Pages"
  git push --force --quiet "https://${TOKEN}@${REF}" master:gh-pages
}

git_push
