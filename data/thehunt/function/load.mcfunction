tellraw @a "Loading 'The Wild Hunt'..."
tellraw @a "Please wait..."
tellraw @a "Removing old teams if existed."
team remove Hunter
team remove Prey
team remove oldPrey
gamemode survival @a[team=Spec]
team remove Spec
tellraw @a "Adding teams"
team add Spec
team add Hunter
team add Prey
tellraw @a "Modify teams..."
tellraw @a "Resetting all..."
function thehunt:stop
tellraw @a "Adding scoreboard"
scoreboard objectives add Deaths deathCount
tellraw @a "Resetting world border..."
worldborder set 10000000
tellraw @a ""
tellraw @a "Success."
tellraw @a ""
#tellraw @a {"text":"\n","color":"white"}
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 1
advancement revoke @a only thehunt:thewildhunt
tellraw @a "haha limbus company"
tellraw @a {"text":"╔══════════════╗","color":"dark_red","bold":true}
tellraw @a {"text":"       THE WILD HUNT","color":"gold","bold":true}
tellraw @a {"text":"╚══════════════╝","color":"dark_red","bold":true}
tellraw @a {"text":"Thank you for using this datapack.","color":"yellow"}
tellraw @a {"text":"Made by LoboThExile. May contain bugs.","color":"yellow"}
tellraw @a {"text":"╔══════════════════════════╗","color":"dark_gray"}
tellraw @a {"text":"To get started, click the button below:","color":"gold"}

tellraw @a {"text":"[START]","color":"green","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/function thehunt:start"}}

tellraw @a {"text":"This will run the function thehunt:start","color":"gold"}
tellraw @a {"text":"╚══════════════════════════╝","color":"dark_gray"}