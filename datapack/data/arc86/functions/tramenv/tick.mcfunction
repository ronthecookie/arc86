# avoid lag if they aren't around
execute positioned 526 167 -59 if entity @a[distance=..5] run function arc86:tramenv/envtick
