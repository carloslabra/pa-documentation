#!/bin/bash

rm -rf _book
github build .
./deploy_github_io.sh