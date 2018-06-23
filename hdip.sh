#!/usr/bin/env bash

. /Users/edeleastar/bin/auto/lib.sh

modules="/Users/edeleastar/repos/modules/wit-hdip-comp-sci/course-home-2018
/Users/edeleastar/repos/modules/wit-hdip-comp-sci/programming-2018
/Users/edeleastar/repos/modules/wit-hdip-comp-sci/web-development-2018
/Users/edeleastar/repos/modules/wit-hdip-comp-sci/june-onsite-2018
/Users/edeleastar/repos/modules/wit-hdip-comp-sci/ict-skills-2018
/Users/edeleastar/repos/modules/wit-hdip-comp-sci/computer-systems-2018
/Users/edeleastar/repos/modules/wit-hdip-comp-sci/database-2018"

# Fetch all
for module in $modules
do
    fetch "$module"
done

# Generate all
for module in $modules
do
    generate "$module"
done

# Publish all
for module in $modules
do
    publish "$module"
done