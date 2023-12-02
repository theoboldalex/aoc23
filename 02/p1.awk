BEGIN {FS="[,;:]"}

{
    red = 0
    green = 0
    blue = 0

    for (i = 1; i < NF; i++) {
        if ($i ~ /red/) {
            red += $i
        }
        if ($i ~ /green/) {
            green += $i
        }
        if ($i ~ /blue/) {
            blue += $i
        }
    }

    if (red <= 12 && green <= 13 && blue <= 14) {
        print $1
        gsub(/[^0-9]/, "", $1)
        sumGames += $1
    }
}

END {print sumGames}
