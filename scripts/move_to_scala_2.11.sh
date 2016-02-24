#!/bin/bash

set +x

find . -name "pom.xml" -exec sed -e "s/2.10.4/2.11.4/g" -e "s/2.10/2.11/g" -i .2.11.bak '{}' \;
# keep maven-javadoc-plugin at version 2.10.3
find . -name "pom.xml" -exec sed -e "s/2.11.3/2.10.3/g" -i .2.11.3.bak '{}' \;
find . -name "*.2.11.bak" -exec rm {} \;
