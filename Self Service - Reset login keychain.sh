#!/bin/sh

## Written by Thijs Xhaflaire - 29-09-2017
## Purpose of this script is to reset the login keychain of the user and do a reboot afterwards so that a new keychain will be created on reboot.

# Removes loginkeychain from current logged in user
rm -Rf /Users/$USER/Library/Keychains/*

# Take a nap
sleep 5

# Pop-up reboot screen
osascript -e 'tell app "loginwindow" to «event aevtrrst»'

exit 0