#!/bin/bash

# set zero
if (xkblayout-state print %c | grep 1); then
    xkblayout-state set 0
# set first
else
    xkblayout-state set 1
fi
