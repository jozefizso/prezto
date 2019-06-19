#
# Provides for easier use of 256 colors and effects.
#
# Authors:
#   P.C. Shyamshankar <sykora@lucentbeing.com>
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Return if requirements are not found.
if [[ "$TERM" == 'dumb' ]]; then
  return 1
fi

typeset -gA FX FG BG

FX=(
					  none                         "\033[00m"
					  normal                       "\033[22m"
  bold                      "\033[01m"    no-bold                      "\033[22m"
  faint                     "\033[02m"    no-faint                     "\033[22m"
  standout                  "\033[03m"    no-standout                  "\033[23m"
  underline                 "\033[04m"    no-underline                 "\033[24m"
  blink                     "\033[05m"    no-blink                     "\033[25m"
  fast-blink                "\033[06m"    no-fast-blink                "\033[25m"
  reverse                   "\033[07m"    no-reverse                   "\033[27m"
  conceal                   "\033[08m"    no-conceal                   "\033[28m"
  strikethrough             "\033[09m"    no-strikethrough             "\033[29m"
  gothic                    "\033[20m"    no-gothic                    "\033[22m"
  double-underline          "\033[21m"    no-double-underline          "\033[22m"
  proportional              "\033[26m"    no-proportional              "\033[50m"
  overline                  "\033[53m"    no-overline                  "\033[55m"

					  no-border                    "\033[54m"
  border-rectangle          "\033[51m"    no-border-rectangle          "\033[54m"
  border-circle             "\033[52m"    no-border-circle             "\033[54m"

					  no-ideogram-marking          "\033[65m"
  underline-or-right        "\033[60m"    no-underline-or-right        "\033[65m"
  double-underline-or-right "\033[61m"    no-double-underline-or-right "\033[65m"
  overline-or-left          "\033[62m"    no-overline-or-left          "\033[65m"
  double-overline-or-left   "\033[63m"    no-double-overline-or-left   "\033[65m"
  stress                    "\033[64m"    no-stress                    "\033[65m"

					  font-default                 "\033[10m"
  font-first                "\033[11m"    no-font-first                "\033[10m"
  font-second               "\033[12m"    no-font-second               "\033[10m"
  font-third                "\033[13m"    no-font-third                "\033[10m"
  font-fourth               "\033[14m"    no-font-fourth               "\033[10m"
  font-fifth                "\033[15m"    no-font-fifth                "\033[10m"
  font-sixth                "\033[16m"    no-font-sixth                "\033[10m"
  font-seventh              "\033[17m"    no-font-seventh              "\033[10m"
  font-eigth                "\033[18m"    no-font-eigth                "\033[10m"
  font-ninth                "\033[19m"    no-font-ninth                "\033[10m"
)

FG[none]="$FX[none]"
BG[none]="$FX[none]"
colors=(black red green yellow blue magenta cyan white)
for color in {0..255}; do
  if (( $color >= 0 )) && (( $color < $#colors )); then
    index=$(( $color + 1 ))
    FG[$colors[$index]]="\033[38;5;${color}m"
    BG[$colors[$index]]="\033[48;5;${color}m"
  fi

  FG[$color]="\033[38;5;${color}m"
  BG[$color]="\033[48;5;${color}m"
done
unset color{s,} index
