execute at @s[scores={crusherType=1}] run summon zombie ~ ~1000 ~ {NoGravity:1b,DeathLootTable:"skymode4:crusher/cobblestone",Tags:[crusherResult]}
execute at @s[scores={crusherType=2}] run summon zombie ~ ~1000 ~ {NoGravity:1b,DeathLootTable:"skymode4:crusher/dirt",Tags:[crusherResult]}
execute at @s[scores={crusherType=3}] run summon zombie ~ ~1000 ~ {NoGravity:1b,DeathLootTable:"skymode4:crusher/gravel",Tags:[crusherResult]}
execute at @s[scores={crusherType=4}] run summon zombie ~ ~1000 ~ {NoGravity:1b,DeathLootTable:"skymode4:crusher/sand",Tags:[crusherResult]}
execute at @s[scores={crusherType=5..10}] run summon zombie ~ ~1000 ~ {NoGravity:1b,DeathLootTable:"skymode4:crusher/log",Tags:[crusherResult]}
execute at @s[scores={crusherType=11}] run summon zombie ~ ~1000 ~ {NoGravity:1b,DeathLootTable:"skymode4:crusher/coal",Tags:[crusherResult]}
kill @e[type=zombie,tag=crusherResult]
execute if block ~ ~-1 ~ hopper positioned ~ ~1000 ~ run tp @e[type=item,distance=..1] ~ ~-1000.5 ~
execute unless block ~ ~-1 ~ hopper positioned ~ ~1000 ~ run tp @e[type=item,distance=..1] ~ ~-1000 ~

scoreboard players set @s crusherTimer 0
scoreboard players remove @s crusherCount 1
execute store result entity @s Items[0].Count byte 1 run scoreboard players get @s crusherCount
execute if block ~ ~-1 ~ hopper run data merge block ~ ~-1 ~ {TransferCooldown:0}
