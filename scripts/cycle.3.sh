#!/bin/bash -e

install -d /usr/local/portage
emerge -bkNe1q @system
emerge --depclean
