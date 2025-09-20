execute as @a[team=Prey,scores={Deaths=1..}] run scoreboard players set @s Deaths 0
tellraw @a ["",{"text":"Congratulations","color":"green"},{"text":", ","color":"white"},{"text":"Hunters","color":"aqua"},{"text":". "},{"text":"You have killed the ","color":"gold"},{"text":"prey","color":"red"},{"text":". "},{"text":"You will move onto the ","color":"gold"},{"text":"next round","color":"yellow"},{"text":".","color":"gold"}]

team join Spec @a[team=Prey]

schedule clear thehunt:announceprey
schedule clear thehunt:countdown_ingame

worldborder set 2000 20

team remove Hunter
team remove Prey
team remove oldPrey