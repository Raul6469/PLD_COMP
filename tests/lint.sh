#!/bin/bash

if [ "${TRAVIS_PULL_REQUEST}" != "false" ]; then
    lintspaces -v -n -b -l 1 -d spaces -s 4 -i 'js-comments' ../src/** ../main.cpp ../grammar/prog.g4
else
    echo "Linting only on pull requests builds"
fi
