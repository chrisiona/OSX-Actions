#!/bin/bash

echo "
  —— INSTALLATION SCRIPT FOR OSX ACTIONS ——
"

OSXACTIONSPATH=/Applications/OSX\ Actions

if [ ! -d "$OSXACTIONSPATH" ]
  then
    echo "  [*] Creating directory: '$OSXACTIONSPATH'"
    mkdir "$OSXACTIONSPATH"
  else
    echo "  [x] Directory '$OSXACTIONSPATH' already exists"
fi

SCRIPTS=( 'Sleep' 'Restart' 'Shutdown' 'Start Screensaver' )

for script in "${SCRIPTS[@]}"
do
    if [ ! -e "$OSXACTIONSPATH/$script.app" ]
        then
            echo "  [*] Compiling actions/$script.applescript"
            osacompile -o "$OSXACTIONSPATH"/"$script".app -x actions/"$script".applescript
        else
            echo "  [x] $script.app already exists. Skipping"
    fi
done

echo "
  You can now access these OSX Actions using Finder or Spotlight.

  https://github.com/chrisiona/OSX-Actions
"

open "$OSXACTIONSPATH"
