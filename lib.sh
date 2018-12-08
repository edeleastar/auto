#!/bin/bash

function cloneAll() {
  echo "Cloning all modules to ${localRoot}"
  for module in $modules
  do
    cd ${localRoot}
    git clone ${remoteRouteSrc}/${module}${srcPostfix}
    cd ${module}${srcPostfix}
    git clone ${remoteRoutePublic}/${module}
    echo "Renaming ${module} to public-site-uk"
    mv ${module} public-site-uk
  done
}

function pullAll() {
  for module in $modules
  do
    echo
    cd ${localRoot}/${module}${srcPostfix}
    echo Pull from ${remoteRouteSrc}/${module}${srcPostfix} [Source Repo]
    git pull
    cd "${localRoot}/${module}${srcPostfix}/public-site-uk"
    echo Pull from ${remoteRoutePublic}/${module} [Public Repo]
    git pull
  done
}

function generateAll() {
  for module in $modules
  do
    cd "${localRoot}/${module}${srcPostfix}"
    tutors-ts
  done
}

function publishAll() {
  for module in $modules
  do
    echo Publishing ${remoteRoutePublic}/${module}
    cd ${localRoot}/${module}${srcPostfix}/public-site-uk
    git add .
    git commit -m 'style update'
    git push
  done
}

function commitAllSources() {
  for module in $modules
  do
    echo Commiting ${module}${srcPostfix}
    cd ${localRoot}/${module}${srcPostfix}
    git add .
    git commit -m 'source update'
    git push
  done
}
