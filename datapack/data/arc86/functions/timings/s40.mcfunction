
scoreboard players set stage globals 40
gamerule sendCommandFeedback false
gamemode spectator @a
gamerule sendCommandFeedback true
#execute as @a run spectate @e[tag=credits-lock,limit=1]
title @a reset
title @a times 10 100 20
title @a subtitle ["",{"text":"The Fall of ARC Site-86...", "color":"#2d4459", "font": "title", "italic": true}]
title @a title ["",{"text":"FALLING FROM GRACE", "color":"#d99f02", "font": "title"}]
# april_loop plays w/ record so we can do this
stopsound @a record
# cleanup so globals arent so messy
scoreboard players reset april_loop_tmp globals
