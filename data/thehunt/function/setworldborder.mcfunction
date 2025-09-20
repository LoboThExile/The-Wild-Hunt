
tellraw @a {"text":""}
tellraw @a {"text":""}

execute positioned ~ ~ ~ align xyz run worldborder center ~ ~
tellraw @a [{"text":"Aligning...","color":"gold"}]

tellraw @a [{"text":"Set world border center.","color":"gold"}]

worldborder set 2000
tellraw @a [{"text":"Set world border to 2000.","color":"gold"}]

tellraw @p [{"text":"Now you may start by pressing here","color":"gold"},{"text":"[Here]","color":"green","bold":true,"click_event":{"action":"run_command","command":"/function thehunt:gamestart"}},{"text":"\nClicking this will start the game. The border will shrink.","color":"yellow"}]
