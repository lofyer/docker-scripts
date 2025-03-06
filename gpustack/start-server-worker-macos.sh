#!/bin/bash
curl -sfL https://get.gpustack.ai | INSTALL_PACKAGE_SPEC=gpustack[all] sh -s - --port 6080

# Change service config file
#/Library/LaunchDaemons/ai.gpustack.plist
#sudo launchctl load /Library/LaunchDaemons/ai.gpustack.plist
#sudo launchctl unload /Library/LaunchDaemons/ai.gpustack.plist
#sudo launchctl start ai.gpustack
#sudo launchctl stop ai.gpustack
#sudo launchctl list | grep ai.gpustack

# Maximize the macos gpu vmem, leave 4GB for the memory
# sudo sysctl iogpu.wired_limit_mb=61440
# sudo launchctl load /Library/LaunchDaemons/com.local.iogpusetting.plist
