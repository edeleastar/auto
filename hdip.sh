#!/usr/bin/env bash

year="2019"

srcPostfix="-${year}"
localRoot="/Users/edeleastar/repos/modules/wit-hdip-comp-sci/${year}"
remoteRouteSrc="https://edel020@bitbucket.org/wit-hdip-comp-sci"
remoteRoutePublic="https://github.com/wit-hdip-comp-sci${srcPostfix}"

#modules="computer-systems
#database
#ict-skills
#programming
#web-development
#june-onsite"


modules="programming
web-development"

. /Users/edeleastar/bin/auto/lib.sh

#cloneAll
#pullAll
generateAll
#publishAll