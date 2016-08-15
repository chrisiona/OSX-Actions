# OSX-Actions
Introducing, a set of OSX—Actions that can be called from withing Spotlight.

![Spotlight](readme-files/sleep.png)

Currently supported actions:
* Sleep
* Restart
* Shutdown
* Start Screensaver

## Installation

First, let's download the OSX-Actions code. 

```bash
MacOS:~ chrisiona$ cd ~/Documents
MacOS:Documents chrisiona$ git clone https://github.com/chrisiona/OSX-Actions.git
Cloning into 'OSX-Actions'...
remote: Counting objects: 24, done.
remote: Compressing objects: 100% (20/20), done.
remote: Total 24 (delta 8), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (24/24), done.
Checking connectivity... done.
MacOS:Documents chrisiona$
```

Next, let's run the installation script which compiles the code into an app by running `bash install.sh`.
```bash
MacOS:Documents chrisiona$ cd OSX-Actions
MacOS:OSX-Actions chrisiona$ bash install.sh 

  —— INSTALLATION SCRIPT FOR OSX ACTIONS ——

  [*] Creating directory: '/Applications/OSX Actions'
  [*] Compiling actions/Sleep.applescript
  [*] Compiling actions/Restart.applescript
  [*] Compiling actions/Shutdown.applescript
  [*] Compiling actions/Start Screensaver.applescript

  You can now access these OSX Actions using Finder or Spotlight.

  https://github.com/chrisiona/OSX-Actions

MacOS:OSX-Actions chrisiona$
```