#!/bin/bash

function fetch () {
  echo Getting Latest  $1
  cd $1
  git pull
  cd $1/public-site-uk
  git pull
}

function generate () {
  echo Building $1 
  cd $1
  tutors-ts -u
  open public-site-uk/index.html
}

function publish() {
  echo Publishing $1
  cd $1/public-site-uk
  git add .
  git commit -m 'style update'
  git push 
}

export -f fetch generate publish


