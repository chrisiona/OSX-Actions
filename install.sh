#!/bin/bash

OSXACTIONSPATH=/Applications/OSX\ Actions

if [ ! -d "$OSXACTIONSPATH" ]
  then
    echo "Creating directory: '$OSXACTIONSPATH'"
    mkdir "$OSXACTIONSPATH"
  else
    echo "Directory '$OSXACTIONSPATH' already exists"
fi

SCRIPTS=( 'Sleep' 'Restart' 'Shutdown' 'Start Screensaver' )

for script in "${SCRIPTS[@]}"
do
    if [ ! -e "$OSXACTIONSPATH/$script.app" ]
        then
            echo "  [*]  Compiling $script.applescript"
            osacompile -o "$OSXACTIONSPATH"/"$script".app -x "$script".applescript
        else
            echo "  [x]  $script.app already exists. Skipping"
    fi
done

echo "" && echo "You can now access these OSX Actions using Finder or Spotlight."
open "$OSXACTIONSPATH"