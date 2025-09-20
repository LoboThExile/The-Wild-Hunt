title @a title "Prey has survived"
title @a[team=Hunter] subtitle ["",{"text":"You ","color":"aqua"},{"text":"have done the "},{"text":"Impossible","color":"red"},{"text":", "},{"text":"Fa","bold":true,"color":"dark_red"},{"text":"i","bold":true,"obfuscated":true,"color":"dark_red"},{"text":"led","bold":true,"color":"dark_red"},{"text":"; "},{"text":"Dissapointing","bold":true,"italic":true,"underlined":true,"color":"gray"}]
title @a[team=Prey] subtitle ["",{"text":"Congratulations,","color":"gold"},{"text":" You have done the "},{"text":"impossible","color":"red"}]

execute as @a at @s run playsound block.note_block.bell music @s ~ ~ ~ 2
execute as @a at @s run playsound item.goat_horn.sound.4 music @s ~ ~ ~ 16 0.2 1
execute as @a at @s run playsound item.goat_horn.sound.5 music @s ~ ~ ~ 16 0.2 1
execute as @a at @s run playsound item.goat_horn.sound.7 music @s ~ ~ ~ 16 0.2 1
team join oldPrey @a[team=Prey]

worldborder set 2000 20

gamerule locatorBar true