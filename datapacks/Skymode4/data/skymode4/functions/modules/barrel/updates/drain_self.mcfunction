tellraw @a[tag=debug] ["drain self"]

function skymode4:modules/barrel/updates/drain_init
execute if entity @s[scores={barrelContent=10}] run data merge entity @e[tag=barrelFlowInit,limit=1] {Tags:[barrelFlow,barrelIron]}
execute if entity @s[scores={barrelContent=14}] run data merge entity @e[tag=barrelFlowInit,limit=1] {Tags:[barrelFlow,barrelGold]}
execute if entity @s[scores={barrelContent=18}] run data merge entity @e[tag=barrelFlowInit,limit=1] {Tags:[barrelFlow,barrelCopper]}
execute if entity @s[scores={barrelContent=22}] run data merge entity @e[tag=barrelFlowInit,limit=1] {Tags:[barrelFlow,barrelTin]}
execute if entity @s[scores={barrelContent=26}] run data merge entity @e[tag=barrelFlowInit,limit=1] {Tags:[barrelFlow,barrelBronze]}