#!/bin/bash -e

source /etc/profile
env-update

# This is a workaround for now to avoid a problem
# with dev-python/cryptography which depends on
# >=dev-libs/openssl-1.0.2:0=[-bindist(-)]
USE="-bindist" emerge -1q --nodeps libressl openssh
emerge -b1q layman
layman -L

# Sync musl stuff
layman -a musl || true
layman -S

# Do everything else we need
USE="build" emerge -bkNu1q sys-apps/portage
emerge -bkNu1q app-portage/grs
