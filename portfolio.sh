#!/usr/bin/env bash

srcPostfix="-src"
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

. /Users/edeleastar/bin/auto/lib.sh

#cloneAll
#pullAll
generateAll
#publishAll