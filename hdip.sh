#!/usr/bin/env bash

. /Users/edeleastar/bin/auto/lib.sh

baseYear="2018"
localRoot="/Users/edeleastar/repos/modules/wit-hdip-comp-sci/$baseYear"
remoteRouteSrc="https://edel020@bitbucket.org/wit-hdip-comp-sci"
remoteRoutePublic="https://github.com/wit-hdip-comp-sci-$baseYear"

modules="computer-systems
course-home
database
ict-skills
programming
web-development
june-onsite"

function cloneAll() {
  start=$SECONDS
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
  echo "Duration = ${duration/60} Minutes"
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
#publishAll