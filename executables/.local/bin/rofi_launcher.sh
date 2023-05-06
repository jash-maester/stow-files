#!/usr/bin/env bash
LANG=C

theme="style_launcher"
dir="$HOME/.config/rofi"

# dark
ALPHA="#00000000"
BG="#2e3440C2"
FG="#d8dee9BF"
SELECT="#3b4252C0"

# accent colors
ACCENT="#BF616AFF"

# overwrite colors file
cat > $dir/colors.rasi <<- EOF
	/* colors */

	* {
	  al:  $ALPHA;
	  bg:  $BG;
	  se:  $SELECT;
	  fg:  $FG;
	  ac:  $ACCENT;
	}
  element-text {
    background-color: inherit;
    text-color:       inherit;
  }
  element-icon {
    background-color: inherit;
    text-color:       inherit;
  }
EOF

rofi -no-lazy-grab -modi drun -show drun -theme $dir/"$theme" -font "Noto Sans Regular 10"
