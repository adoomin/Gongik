#Set Scoreboard
scoreboard objectives add AccGiS dummy
scoreboard objectives add AccGiW dummy
scoreboard objectives add AccGiN dummy
scoreboard objectives add AccGiE dummy

scoreboard objectives add MSGStG dummy
scoreboard players add @e[type=minecraft:armor_stand,nbt={Tags:["StopGongik"]}] MSGStG 1
scoreboard players set @e[scores={MSGStG=3..}] MSGStG 0

scoreboard objectives add SetGiR minecraft.used:minecraft.carrot_on_a_stick
scoreboard players set @p[scores={SetGiR=4..}] SetGiR 0

#When player hold DeconvoGongik(소집해제)
execute as @p[nbt={SelectedItem:{id:"minecraft:allium",tag:{CustomModelData:DeconvoGongik}}}] at @s run kill @e[type=minecraft:armor_stand,nbt={Tags:["StopGongik"]},distance=0..2]

#Set Rotation Tag
execute as @e[type=minecraft:armor_stand,nbt={Tags:["StopGongik"]},y_rotation=0] at @s run tag @s add GiSouth
execute as @e[type=minecraft:armor_stand,nbt={Tags:["StopGongik"]},y_rotation=0] at @s run tag @s remove GiWest
execute as @e[type=minecraft:armor_stand,nbt={Tags:["StopGongik"]},y_rotation=0] at @s run tag @s remove GiNorth
execute as @e[type=minecraft:armor_stand,nbt={Tags:["StopGongik"]},y_rotation=0] at @s run tag @s remove GiEast

execute as @e[type=minecraft:armor_stand,nbt={Tags:["StopGongik"]},y_rotation=90] at @s run tag @s add GiWest
execute as @e[type=minecraft:armor_stand,nbt={Tags:["StopGongik"]},y_rotation=90] at @s run tag @s remove GiSouth
execute as @e[type=minecraft:armor_stand,nbt={Tags:["StopGongik"]},y_rotation=90] at @s run tag @s remove GiNorth
execute as @e[type=minecraft:armor_stand,nbt={Tags:["StopGongik"]},y_rotation=90] at @s run tag @s remove GiEast

execute as @e[type=minecraft:armor_stand,nbt={Tags:["StopGongik"]},y_rotation=180] at @s run tag @s add GiNorth
execute as @e[type=minecraft:armor_stand,nbt={Tags:["StopGongik"]},y_rotation=180] at @s run tag @s remove GiSouth
execute as @e[type=minecraft:armor_stand,nbt={Tags:["StopGongik"]},y_rotation=180] at @s run tag @s remove GiWest
execute as @e[type=minecraft:armor_stand,nbt={Tags:["StopGongik"]},y_rotation=180] at @s run tag @s remove GiEast

execute as @e[type=minecraft:armor_stand,nbt={Tags:["StopGongik"]},y_rotation=-90] at @s run tag @s add GiEast
execute as @e[type=minecraft:armor_stand,nbt={Tags:["StopGongik"]},y_rotation=-90] at @s run tag @s remove GiSouth
execute as @e[type=minecraft:armor_stand,nbt={Tags:["StopGongik"]},y_rotation=-90] at @s run tag @s remove GiWest
execute as @e[type=minecraft:armor_stand,nbt={Tags:["StopGongik"]},y_rotation=-90] at @s run tag @s remove GiNorth

#When player used GongikTurnStick to gongik
execute as @p[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:GongikTurnStick}}},scores={SetGiR=0}] at @s run data merge entity @e[tag=GiWest,distance=0..3,limit=1] {Rotation:[0f,0f]}
execute as @p[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:GongikTurnStick}}},scores={SetGiR=0}] at @s run data merge entity @e[tag=GiNorth,distance=0..3,limit=1] {Rotation:[0f,0f]}
execute as @p[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:GongikTurnStick}}},scores={SetGiR=0}] at @s run data merge entity @e[tag=GiEast,distance=0..3,limit=1] {Rotation:[0f,0f]}

execute as @p[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:GongikTurnStick}}},scores={SetGiR=1}] at @s run data merge entity @e[tag=GiSouth,distance=0..3,limit=1] {Rotation:[90f,0f]}
execute as @p[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:GongikTurnStick}}},scores={SetGiR=1}] at @s run data merge entity @e[tag=GiNorth,distance=0..3,limit=1] {Rotation:[90f,0f]}
execute as @p[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:GongikTurnStick}}},scores={SetGiR=1}] at @s run data merge entity @e[tag=GiEast,distance=0..3,limit=1] {Rotation:[90f,0f]}

execute as @p[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:GongikTurnStick}}},scores={SetGiR=2}] at @s run data merge entity @e[tag=GiSouth,distance=0..3,limit=1] {Rotation:[180f,0f]}
execute as @p[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:GongikTurnStick}}},scores={SetGiR=2}] at @s run data merge entity @e[tag=GiWest,distance=0..3,limit=1] {Rotation:[180f,0f]}
execute as @p[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:GongikTurnStick}}},scores={SetGiR=2}] at @s run data merge entity @e[tag=GiEast,distance=0..3,limit=1] {Rotation:[180f,0f]}

execute as @p[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:GongikTurnStick}}},scores={SetGiR=3}] at @s run data merge entity @e[tag=GiSouth,distance=0..3,limit=1] {Rotation:[-90f,0f]}
execute as @p[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:GongikTurnStick}}},scores={SetGiR=3}] at @s run data merge entity @e[tag=GiWest,distance=0..3,limit=1] {Rotation:[-90f,0f]}
execute as @p[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:GongikTurnStick}}},scores={SetGiR=3}] at @s run data merge entity @e[tag=GiNorth,distance=0..3,limit=1] {Rotation:[-90f,0f]}


#When entity access near gongik

##Set entity score when gongik see south
execute as @e[tag=GiSouth] at @s if entity @e[type=!minecraft:armor_stand,dx=5,dy=5,nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:GongikTurnStick}}}] run scoreboard players set @e[type=!minecraft:armor_stand,dx=5,dy=5] AccGiS 1
execute as @e[tag=GiSouth] at @s if entity @e[type=!minecraft:armor_stand,dx=-5,dy=5,nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:GongikTurnStick}}}] run scoreboard players set @e[type=!minecraft:armor_stand,dx=-5,dy=5] AccGiS 1
##Set entity score when gongik see west
execute as @e[tag=GiWest] at @s if entity @e[type=!minecraft:armor_stand,dz=5,dy=5,nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:GongikTurnStick}}}] run scoreboard players set @e[type=!minecraft:armor_stand,dz=5,dy=5] AccGiW 1
execute as @e[tag=GiWest] at @s if entity @e[type=!minecraft:armor_stand,dz=-5,dy=5,nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:GongikTurnStick}}}] run scoreboard players set @e[type=!minecraft:armor_stand,dz=-5,dy=5] AccGiW 1
##Set entity score when gongik see north
execute as @e[tag=GiNorth] at @s if entity @e[type=!minecraft:armor_stand,dx=5,dy=5,nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:GongikTurnStick}}}] run scoreboard players set @e[type=!minecraft:armor_stand,dx=5,dy=5] AccGiN 1
execute as @e[tag=GiNorth] at @s if entity @e[type=!minecraft:armor_stand,dx=-5,dy=5,nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:GongikTurnStick}}}] run scoreboard players set @e[type=!minecraft:armor_stand,dx=-5,dy=5] AccGiN 1
##Set entity score when gongik see east
execute as @e[tag=GiEast] at @s if entity @e[type=!minecraft:armor_stand,dz=5,dy=5,nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:GongikTurnStick}}}] run scoreboard players set @e[type=!minecraft:armor_stand,dz=5,dy=5] AccGiE 1
execute as @e[tag=GiEast] at @s if entity @e[type=!minecraft:armor_stand,dz=-5,dy=5,nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:GongikTurnStick}}}] run scoreboard players set @e[type=!minecraft:armor_stand,dz=-5,dy=5] AccGiE 1

##Tp scored entity when gongik see south
execute as @e[tag=GiSouth] at @s if entity @e[scores={AccGiS=1},tag=!AccGiS,distance=0..5] run tp @e[scores={AccGiS=1},tag=!AccGiS,distance=0..5] ~ ~ ~3 180 0
##Tp scored entity when gongik see west
execute as @e[tag=GiWest] at @s if entity @e[scores={AccGiW=1},tag=!AccGiW,distance=0..5] run tp @e[scores={AccGiW=1},tag=!AccGiW,distance=0..5] ~-3 ~ ~ -90 0
##Tp scored entity when gongik see north
execute as @e[tag=GiNorth] at @s if entity @e[scores={AccGiN=1},tag=!AccGiN,distance=0..5] run tp @e[scores={AccGiN=1},tag=!AccGiN,distance=0..5] ~ ~ ~-3 0 0
##Tp scored entity when gongik see east
execute as @e[tag=GiEast] at @s if entity @e[scores={AccGiE=1},tag=!AccGiE,distance=0..5] run tp @e[scores={AccGiE=1},tag=!AccGiE,distance=0..5] ~3 ~ ~ 90 0

##Say to entity when gongik see south
execute as @e[tag=GiSouth,scores={MSGStG=0}] at @s if entity @e[scores={AccGiS=1},tag=!AccGiS] run tellraw @a[distance=0..5] {"text":"\n여기 지나가시면 안돼요\n","color":"dark_purple","bold":true}
execute as @e[tag=GiSouth,scores={MSGStG=1}] at @s if entity @e[scores={AccGiS=1},tag=!AccGiS] run tellraw @a[distance=0..5] {"text":"\n여기는 못 지나갑니다\n","color":"dark_purple","bold":true}
execute as @e[tag=GiSouth,scores={MSGStG=2}] at @s if entity @e[scores={AccGiS=1},tag=!AccGiS] run tellraw @a[distance=0..5] {"text":"\n다시 돌아가세요\n","color":"dark_purple","bold":true}
##Say to entity when gongik see west
execute as @e[tag=GiWest,scores={MSGStG=0}] at @s if entity @e[scores={AccGiW=1},tag=!AccGiW] run tellraw @a[distance=0..5] {"text":"\n여기 지나가시면 안돼요\n","color":"dark_purple","bold":true}
execute as @e[tag=GiWest,scores={MSGStG=1}] at @s if entity @e[scores={AccGiW=1},tag=!AccGiW] run tellraw @a[distance=0..5] {"text":"\n여기는 못 지나갑니다\n","color":"dark_purple","bold":true}
execute as @e[tag=GiWest,scores={MSGStG=2}] at @s if entity @e[scores={AccGiW=1},tag=!AccGiW] run tellraw @a[distance=0..5] {"text":"\n다시 돌아가세요\n","color":"dark_purple","bold":true}
##Say to entity when gongik see north
execute as @e[tag=GiNorth,scores={MSGStG=0}] at @s if entity @e[scores={AccGiN=1},tag=!AccGiN] run tellraw @a[distance=0..5] {"text":"\n여기 지나가시면 안돼요\n","color":"dark_purple","bold":true}
execute as @e[tag=GiNorth,scores={MSGStG=1}] at @s if entity @e[scores={AccGiN=1},tag=!AccGiN] run tellraw @a[distance=0..5] {"text":"\n여기는 못 지나갑니다\n","color":"dark_purple","bold":true}
execute as @e[tag=GiNorth,scores={MSGStG=2}] at @s if entity @e[scores={AccGiN=1},tag=!AccGiN] run tellraw @a[distance=0..5] {"text":"\n다시 돌아가세요\n","color":"dark_purple","bold":true}
##Say to entity when gongik see east
execute as @e[tag=GiEast,scores={MSGStG=0}] at @s if entity @e[scores={AccGiE=1},tag=!AccGiE] run tellraw @a[distance=0..5] {"text":"\n여기 지나가시면 안돼요\n","color":"dark_purple","bold":true}
execute as @e[tag=GiEast,scores={MSGStG=1}] at @s if entity @e[scores={AccGiE=1},tag=!AccGiE] run tellraw @a[distance=0..5] {"text":"\n여기는 못 지나갑니다\n","color":"dark_purple","bold":true}
execute as @e[tag=GiEast,scores={MSGStG=2}] at @s if entity @e[scores={AccGiE=1},tag=!AccGiE] run tellraw @a[distance=0..5] {"text":"\n다시 돌아가세요\n","color":"dark_purple","bold":true}


#Set entity scores & tag to gongik execute one time

tag @e[scores={AccGiS=1},tag=!AccGiS] add AccGiS
tag @e[scores={AccGiW=1},tag=!AccGiW] add AccGiW
tag @e[scores={AccGiN=1},tag=!AccGiN] add AccGiN
tag @e[scores={AccGiE=1},tag=!AccGiE] add AccGiE

scoreboard players reset @e[tag=AccGiS] AccGiS
scoreboard players reset @e[tag=AccGiW] AccGiW
scoreboard players reset @e[tag=AccGiN] AccGiN
scoreboard players reset @e[tag=AccGiE] AccGiE

tag @e[tag=AccGiS] remove AccGiS
tag @e[tag=AccGiW] remove AccGiW
tag @e[tag=AccGiN] remove AccGiN
tag @e[tag=AccGiE] remove AccGiE
