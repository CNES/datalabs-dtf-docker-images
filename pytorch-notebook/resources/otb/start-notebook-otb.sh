#!/bin/bash

# export CMAKE_PREFIX_PATH=$HOME/otb
# export PYTHONPATH=$HOME/otb/lib/python3/dist-packages:$HOME/otb/lib/otb/python
# export GDAL_DRIVER_PATH=disable
# export GDAL_DATA=$HOME/otb/share/gdal
export PROJ_LIB=$HOME/otb/share/proj
export PATH=$HOME/otb/bin:$PATH
export OTB_APPLICATION_PATH=$HOME/otb/lib/otb/applications
export LC_NUMERIC=C
export OTB_INSTALL_DIR=$HOME/otb
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$OTB_INSTALL_DIR/lib"
export PYTHONPATH=$OTB_INSTALL_DIR/lib/otb/python

CC=/usr/bin/gcc; $HOME/otb/tools/post_install.sh && $HOME/otb/recompile_bindings.sh