# Useful Mac OS tips

* Disable Spotlight

sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist

* Enable Spotlight

sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist

* System Integrity Protection

Reboot with Cmd + R and then in Terminal $ csrutil disable; reboot