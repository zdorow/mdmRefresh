#!/bin/bash

# Removes the MDM profile
jamf removeMDMprofile
/usr/bin/profiles -D -f

/bin/sleep 10

# Gets the new MDM profile
jamf mdm

/bin/sleep 10


#Manages computer
jamf manage

/bin/sleep 10

#Submits inventory
jamf recon

exit 0