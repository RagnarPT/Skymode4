tellraw @a[tag=debug] ["check casting"]
execute if entity @s[scores={barrelContent=10}] if entity @e[tag=barrelCasting,scores={barrelMold=0}] run function skymode4:modules/barrel/drain/self
execute if entity @s[scores={barrelContent=14}] if entity @e[tag=barrelCasting,scores={barrelMold=0}] run function skymode4:modules/barrel/drain/self
execute if entity @s[scores={barrelContent=18}] if entity @e[tag=barrelCasting,scores={barrelMold=0}] run function skymode4:modules/barrel/drain/self
execute if entity @s[scores={barrelContent=22}] if entity @e[tag=barrelCasting,scores={barrelMold=0}] run function skymode4:modules/barrel/drain/self
execute if entity @s[scores={barrelContent=26}] if entity @e[tag=barrelCasting,scores={barrelMold=0}] run function skymode4:modules/barrel/drain/self
execute if entity @s[scores={barrelContent=30}] if entity @e[tag=barrelCasting,scores={barrelMold=0}] run function skymode4:modules/barrel/drain/self
execute if entity @s[scores={barrelContent=34}] if entity @e[tag=barrelCasting,scores={barrelMold=0}] run function skymode4:modules/barrel/drain/self
execute if entity @s[scores={barrelContent=38}] if entity @e[tag=barrelCasting,scores={barrelMold=0}] run function skymode4:modules/barrel/drain/self

execute if entity @s[scores={barrelContent=10}] if entity @e[tag=barrelCasting,scores={barrelMold=17..32}] run function skymode4:modules/barrel/drain/self
execute if entity @s[scores={barrelContent=14}] if entity @e[tag=barrelCasting,scores={barrelMold=1..16}] run advancement grant @s only skymode4:metal_age/cast_mold
execute if entity @s[scores={barrelContent=14}] if entity @e[tag=barrelCasting,scores={barrelMold=1..16}] run function skymode4:modules/barrel/drain/self
execute if entity @s[scores={barrelContent=18}] if entity @e[tag=barrelCasting,scores={barrelMold=17..32}] run function skymode4:modules/barrel/drain/self
execute if entity @s[scores={barrelContent=22}] if entity @e[tag=barrelCasting,scores={barrelMold=17..32}] run function skymode4:modules/barrel/drain/self
execute if entity @s[scores={barrelContent=26}] if entity @e[tag=barrelCasting,scores={barrelMold=17..32}] run function skymode4:modules/barrel/drain/self
execute if entity @s[scores={barrelContent=30}] if entity @e[tag=barrelCasting,scores={barrelMold=17..32}] run function skymode4:modules/barrel/drain/self
execute if entity @s[scores={barrelContent=34}] if entity @e[tag=barrelCasting,scores={barrelMold=17..32}] run function skymode4:modules/barrel/drain/self
execute if entity @s[scores={barrelContent=38}] if entity @e[tag=barrelCasting,scores={barrelMold=17..32}] run function skymode4:modules/barrel/drain/self
tag @e[tag=barrelCasting] remove barrelCasting
