team add oldPrey
team join oldPrey @a[team=Prey]
#team leave @a[team=!oldPrey]

team remove Hunter
team remove Prey
team add Hunter
team add Prey

team join Prey @r[team=!oldPrey]
team join Hunter @a[team=!Prey]
team remove oldPrey

execute as @a[team=Prey] run title @a subtitle {"text":"Prey chosen: ","color":"red","extra":[{"text":"?????????????????","color":"yellow", obfuscated:true}]}
title @a title ""

tellraw @a ["",{"text":"--------------","color":"gold"},{"text":"[","color":"dark_red"},{"text":"The Hunt","color":"red"},{"text":"]","color":"dark_red"},{"text":"--------------","color":"gold"}]
tellraw @a[team=Hunter] [{"text":"You are a ","color":"dark_red"},{"text":"Hunter","color":"red"},{"text":".","color":"dark_red"}]
tellraw @a[team=Hunter] {"text":"Prey chosen: ","color":"red","extra":[{"selector":"@s","color":"yellow",obfuscated:true}]}
tellraw @a[team=Hunter] [{"text":"The prey will be announced in 2.5 min.","color":"yellow"}]
tellraw @a[team=Hunter] {"text":"Get Ready To Hunt, Or Be Hunted Down.","color":"red"}
tellraw @a[team=Hunter] ["",{"text":"You have "},{"text":"15 Minutes","color":"red"},{"text":" to kill the "},{"text":"prey.","color":"red"}]
tellraw @a[team=Prey] ["",{"text":"You are the "},{"text":"Prey.","color":"red"},{"text":" Survive for"},{"text":" 15 minuites","color":"green"},{"text":" and you will move onto the "},{"text":"next round","color":"yellow"},{"text":"."}]
tellraw @a[team=Prey] ["",{"text":"After 2.5 min, The "},{"text":"hunters","color":"red"},{"text":" will be"},{"text":" notified","color":"yellow"},{"text":" who the "},{"text":"prey","color":"red"},{"text":" is. "},{"text":"Prepare for now.","color":"dark_red"}]
 
schedule function thehunt:announceprey 150s replace
scoreboard players set #count Timer 900
function thehunt:countdown_ingame