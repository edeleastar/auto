#!/bin/bash

function clone () {
  echo cloning $1
  git clone $1
}


function fetch () {
  echo Getting Latest  $1
  cd $1
  git pull
  cd $1/public-site-uk
  echo Getting Latest  $1//public-site-uk
  git pull
}

function generate () {
  echo Generating $1
  cd $1
  tutors-ts
  open public-site-uk/index.html
}

function publish() {
  echo Publishing $1
  git add .
  git commit -m 'style update'
  git push 
}

export -f clone fetch generate publish


