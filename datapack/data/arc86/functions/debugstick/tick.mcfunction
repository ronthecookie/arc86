#execute as @e[nbt={SelectedItem: {id: "minecraft:debug_stick"}}] at @s run function arc86:debugstick/ptick
#execute as @e[tag=debugstick] unless data entity @s Inventory[{id: "minecraft:debug_stick"}] run tag @s remove debugstick
function arc86:debugstick/genver
