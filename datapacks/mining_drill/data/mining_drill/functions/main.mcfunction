execute as @s[tag=notsurvival,gamemode=adventure] run title @s actionbar ["",{"text":"Status: ","color":"white"},{"text":"OFF","color":"red"},{"text":" - You don't have enough Power","color":"none"}]
execute as @s[tag=notsurvival,gamemode=survival] run title @s actionbar ["",{"text":"Status: ","color":"white"},{"text":"ON","color":"green"},{"text":" - You have enough Power","color":"none"}]

execute as @e[gamemode=!creative,gamemode=!spectator] run function mining_drill:only_if

execute as @s[tag=notsurvival,gamemode=adventure] run title @s actionbar ["",{"text":"Status: ","color":"white"},{"text":"OFF","color":"red"},{"text":" - You don't have enough Power","color":"none"}]
execute as @s[tag=notsurvival,gamemode=survival] run title @s actionbar ["",{"text":"Status: ","color":"white"},{"text":"ON","color":"green"},{"text":" - You have enough Power","color":"none"}]