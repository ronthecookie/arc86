scoreboard players set stage globals 30
execute as @a at @s run playsound arc86:s30 voice @s ~ ~ ~
scoreboard players set @a absubID 4
execute positioned -106 150 -51 run tp @a[distance=20..] ~ ~ ~ 0 -10
execute unless entity @e[tag=introatrium-point] run function arc86:introatrium/prepare