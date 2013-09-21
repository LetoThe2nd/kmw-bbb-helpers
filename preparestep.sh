#!/bin/sh

if [ "$#" -ne 1]; then
	echo "Usage: preparestep.sh target"
	echo "  where"
	echo "  target: the git tag, branch or commit you want to use"
	exit 1;
fi

git clean -df
git reset --hard
git checkout $1
