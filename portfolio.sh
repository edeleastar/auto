#!/usr/bin/env bash

. /Users/edeleastar/bin/auto/lib.sh

baseYear="src"
localRoot="/Users/edeleastar/repos/modules/edeleastar.github.io"
remoteRouteSrc="https://github.com/edeleastar-portfolio"
remoteRoutePublic="https://github.com/edeleastar-portfolio"

modules="web-site-dev
web-app-dev-js
web-app-dev-java
node-web-app-dev
android-app-dev
android-app-dev-kotlin
agile-soft-dev
design-patterns
design-patterns-with-enterprise-arch"

function cloneAll() {
  echo "Cloning all modules to $localRoot"
  for module in $modules
  do
    cd ${localRoot}
    clone ${remoteRouteSrc}/${module}-${baseYear}
    cd ${module}-${baseYear}
    git clone ${remoteRoutePublic}/${module}
    echo "Renaming ${module} to public-site-uk"
    mv ${module} public-site-uk
  done
  end=$SECONDS
  duration=$(( end - start ))
}

function fetchAll() {
  for module in $modules
  do
    echo
    cd ${localRoot}/${module}-${baseYear}
    echo ${module} Source
    git pull
    cd "$localRoot/$module-$baseYear/public-site-uk"
    echo ${module} Public
    git pull
  done
}

function generateAll() {
  for module in $modules
  do
    cd "$localRoot/$module-$baseYear"
    tutors-ts
  done
}

function publishAll() {
  for module in $modules
  do
    echo Publishing ${module}
    cd ${localRoot}/${module}-${baseYear}/public-site-uk
    git add .
    git commit -m 'style update'
    git push
  done
}

#cloneAll
#fetchAll
#generateAll
publishAll