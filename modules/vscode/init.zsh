#
# Run VS Code from the terminal
#
# Authors:
#

function code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $*; }
