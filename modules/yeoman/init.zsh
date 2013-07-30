#
# Defines Yeoman aliases.
#
# Yeoman + Bower + Grunt
#
# Authors:
#   Jozef Izso <jozef.izso@gmail.com>
#

if (( $+commands[bower] )); then
  # alias bower so we can use commands with hash char, e.g. 'bower install jquery#1.9.1'
  alias bower='noglob bower'
fi
