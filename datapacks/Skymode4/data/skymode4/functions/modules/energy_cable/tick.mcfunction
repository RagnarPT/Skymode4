tag @e[type=item,nbt={Item:{id:"minecraft:prismarine_slab"}}] add energyCableItem
tag @e[type=item,nbt={Item:{id:"minecraft:prismarine_bricks_slab"}}] add energyCableItem
tag @e[type=item,nbt={Item:{id:"minecraft:dark_prismarine_slab"}}] add energyCableItem
execute as @e[type=item,tag=energyCableItem] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function skymode4:modules/energy_cable/remove