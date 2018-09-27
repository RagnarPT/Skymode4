execute as @s[tag=notsurvival,gamemode=adventure] run title @s actionbar ["",{"text":"Status: ","color":"white"},{"text":"OFF","color":"red"},{"text":" - You don't have enough Power","color":"none"}]
execute as @s[tag=notsurvival,gamemode=survival] run title @s actionbar ["",{"text":"Status: ","color":"white"},{"text":"ON","color":"green"},{"text":" - You have enough Power","color":"none"}]

scoreboard objectives add hasEnergy dummy
scoreboard players add @a hasEnergy 0
execute as @s[nbt={SelectedItem:{id:"minecraft:iron_pickaxe",Count:1b,tag:{display:{Name:"{\"text\":\"Mining Drill\",\"italic\":false}"},HideFlags:63,Unbreakable:1b,Damage:250}}}] run tag @s add notsurvival
execute as @s[nbt={SelectedItem:{id:"minecraft:iron_pickaxe",Count:1b,tag:{display:{Name:"{\"text\":\"Mining Drill\",\"italic\":false}"},HideFlags:63,Unbreakable:1b,Damage:250}}}] run function mining_drill:detect_energy
execute as @s[nbt={SelectedItem:{id:"minecraft:iron_pickaxe",Count:1b,tag:{display:{Name:"{\"text\":\"Mining Drill\",\"italic\":false}"},HideFlags:63,Unbreakable:1b,Damage:250}}}] unless entity @s[scores={hasEnergy=1}] run gamemode adventure @s
execute as @a[tag=notsurvival] unless entity @s[nbt={SelectedItem:{id:"minecraft:iron_pickaxe",Count:1b,tag:{display:{Name:"{\"text\":\"Mining Drill\",\"italic\":false}"},HideFlags:63,Unbreakable:1b,Damage:250}}}] run gamemode survival @s
execute as @a[tag=notsurvival] unless entity @s[nbt={SelectedItem:{id:"minecraft:iron_pickaxe",Count:1b,tag:{display:{Name:"{\"text\":\"Mining Drill\",\"italic\":false}"},HideFlags:63,Unbreakable:1b,Damage:250}}}] run tag @s remove notsurvival
execute as @s unless entity @s[scores={hasEnergy=0}] run gamemode survival @s
scoreboard players reset @a hasEnergy


scoreboard objectives add breakBlock minecraft.used:minecraft.iron_pickaxe 
execute as @a unless entity @s[scores={breakBlock=1..},nbt={SelectedItem:{id:"minecraft:iron_pickaxe",Count:1b,tag:{display:{Name:"{\"text\":\"Mining Drill\",\"italic\":false}"},HideFlags:63,Unbreakable:1b,Damage:250}}}] run scoreboard players reset @s breakBlock
execute as @a[scores={breakBlock=1..},nbt={SelectedItem:{id:"minecraft:iron_pickaxe",Count:1b,tag:{display:{Name:"{\"text\":\"Mining Drill\",\"italic\":false}"},HideFlags:63,Unbreakable:1b,Damage:250}}}] run function mining_drill:bat_energy
execute as @a[scores={breakBlock=1..}] run scoreboard players reset @s breakBlock


execute as @s[tag=notsurvival,gamemode=adventure] run title @s actionbar ["",{"text":"Status: ","color":"white"},{"text":"OFF","color":"red"},{"text":" - You don't have enough Power","color":"none"}]
execute as @s[tag=notsurvival,gamemode=survival] run title @s actionbar ["",{"text":"Status: ","color":"white"},{"text":"ON","color":"green"},{"text":" - You have enough Power","color":"none"}]


#give @p minecraft:iron_pickaxe{display:{Name:"{\"text\":\"Mining Drill\",\"italic\":false}"},HideFlags:63,Unbreakable:1b,Damage:250} 1
#summon item ~ ~ ~ {Item:{id:"minecraft:iron_pickaxe",Count:1b,tag:{display:{Name:"{\"text\":\"Mining Drill\",\"italic\":false}"},HideFlags:63,Unbreakable:1b,Damage:250}}}
