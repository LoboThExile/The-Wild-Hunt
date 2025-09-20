# Announce the countdown
execute as @a run title @a actionbar {"text":"","extra":[{"score":{"name":"#count","objective":"Timer"}},{"text":"s left","color":"yellow"}]}

# Decrease the timer
scoreboard players remove #count Timer 1
# Schedule next tick if timer > 0
execute if score #count Timer matches 1.. run schedule function thehunt:countdown_ingame 20t

# When timer reaches 0, call the start game function
execute if score #count Timer matches 0 run function thehunt:survive
