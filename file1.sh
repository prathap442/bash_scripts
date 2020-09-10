#!/bin/sh
export ENGAGEDLYREPOPATH="$HOME/Documents/engagedly-projects" 
osascript <<END 
tell application "Terminal"
    do script "`echo export ENGAGEDLYREPOPATH=$HOME/Documents/engagedly`;cd \"`echo $ENGAGEDLYREPOPATH/anmolhrm`\";resque-pool --environment=development;pwd"
end tell
END