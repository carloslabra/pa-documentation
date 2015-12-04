#!/bin/bash

rm -rf _book
gitbook build .
./deploy_github_io.sh