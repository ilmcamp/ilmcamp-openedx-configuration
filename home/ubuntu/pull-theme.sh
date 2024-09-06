#!/bin/bash
#------------------------------------------------------------------------------
# written by: Lawrence McDaniel
#             https://lawrencemcdaniel.com
#
# date:       sep-2024
#
# usage: 
#------------------------------------------------------------------------------

THEME_PATH=~/.local/share/tutor/env/build/openedx/themes/
THEME_NAME=ilmcamp-openedx-theme

if [ -d "$THEME_PATH" ]; then
    cd $THEME_PATH
    if [ -d "$THEME_NAME" ]; then
        cd $THEME_NAME
        git pull
    else
        git clone https://github.com/ilmcamp/ilmcamp-openedx-theme.git
    fi
else
  echo "tutor has not been initialized on this Ubuntu instance. The directory $THEME_PATH does not exist."
fi

cd ~/
