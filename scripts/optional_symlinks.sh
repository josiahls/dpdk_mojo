#!/bin/bash
# Useful if we are mounting c_binder_mojo from a host machine.

if [ -d $HOME/c_binder_mojo && ! -d c_binder_mojo ]; then
    ln -s $HOME/c_binder_mojo c_binder_mojo
else
    pixi run clone_c_binder_mojo
fi



