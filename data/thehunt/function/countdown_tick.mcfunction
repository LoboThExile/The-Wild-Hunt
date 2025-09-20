# Announce the countdown
execute as @a run title @a actionbar {"text":"Game will start in ","color":"yellow","extra":[{"score":{"name":"#count","objective":"Timer"}}]}

# Decrease the timer
scoreboard players remove #count Timer 1
execute as @a at @s run playsound block.note_block.bell music @s ~ ~ ~ 2
# Schedule next tick if timer > 0
execute if score #count Timer matches 1.. run schedule function thehunt:countdown_tick 20t

# When timer reaches 0, call the start game function
execute if score #count Timer matches 0 run function thehunt:startaftercd
