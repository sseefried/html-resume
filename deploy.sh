#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

rsync -avz index.html 'tilthydeath:/var/www/seanseefried.org'
