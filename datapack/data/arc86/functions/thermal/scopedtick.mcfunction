team join scopeColor @e[distance=0.1..30,type=!area_effect_cloud,type=!item_frame,type=!armor_stand,type=!falling_block,type=!item,team=,tag=!voicelog,tag=!scp330,tag=!s82-blocker]
effect give @e[distance=0.1..30,type=!area_effect_cloud,type=!item_frame,type=!armor_stand,type=!falling_block,type=!item,tag=!voicelog,tag=!scp330,tag=!s82-blocker] glowing 1 1 true
execute if score @s thermal matches -1 run function arc86:thermal/on_true
