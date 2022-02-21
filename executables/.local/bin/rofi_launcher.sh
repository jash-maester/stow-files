#!/usr/bin/env bash
LANG=C

theme="style_9"
dir="$HOME/.config/rofi/launchers/colorful"

# dark
ALPHA="#00000000"
BG="#2e3440C2"
FG="#d8dee9BF"
SELECT="#3b4252C0"

# accent colors
COLORS=('#8FBCBB' '#88C0D0' '#81A1C1' '#5E81AC' '#BF616A' '#D08770' '#B48EAD')
ACCENT="${COLORS[$(( $RANDOM % 7 ))]}ff"

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
EOF

rofi -no-lazy-grab -modi drun -show drun -theme $dir/"$theme" -font "Noto Sans Regular 10"
