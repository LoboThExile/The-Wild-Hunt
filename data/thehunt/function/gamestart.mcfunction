tellraw @a ""
tellraw @a ""
say Game is starting...
# Set the current number (use storage or scoreboard)
scoreboard objectives add Timer dummy
scoreboard players set #count Timer 5

# Start countdown by running the countdown_tick function
function thehunt:countdown_tick
