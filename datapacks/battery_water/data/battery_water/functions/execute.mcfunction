
execute as @e[tag=capacitorBank,scores={energy=1..}] at @s if block ~ ~ ~ minecraft:dropper{Items: [{Slot: 4b, id: "minecraft:diamond_sword", Count: 1b, tag: {Unbreakable: 1b, HideFlags: 63, display: {Name: "{\"text\":\"Battery Water\",\"italic\":false}"}, AttributeModifiers: [{UUIDMost: 235126, UUIDLeast: 546798, Amount: 0, AttributeName: "generic.attackDamage", Operation: 1, Name: "generic.attackDamage"}, {UUIDMost: 965305, UUIDLeast: 275533, Amount: 100, AttributeName: "generic.attackSpeed", Operation: 1, Name: "generic.attackSpeed"}]}}]} unless block ~ ~ ~ minecraft:dropper{Items: [{Slot: 4b, id: "minecraft:diamond_sword", Count: 1b, tag: {Unbreakable: 1b, HideFlags: 63, display: {Lore:["§aEnergy: §f1000/1000§r"], Name: "{\"text\":\"Battery Water\",\"italic\":false}"}, Damage: 1558, AttributeModifiers: [{UUIDMost: 235126, UUIDLeast: 546798, Amount: 0, AttributeName: "generic.attackDamage", Operation: 1, Name: "generic.attackDamage"}, {UUIDMost: 965305, UUIDLeast: 275533, Amount: 100, AttributeName: "generic.attackSpeed", Operation: 1, Name: "generic.attackSpeed"}]}}]} run tag @s add fillBat

execute as @e[tag=fillBat,scores={energy=1..}] at @s run function battery_water:detect
execute as @e[tag=fillBat,scores={energy=1..}] at @s run scoreboard players remove @s energy 1
execute as @e[tag=fillBat] at @s run tag @s remove fillBat