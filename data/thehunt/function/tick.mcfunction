execute as @a[team=Prey,scores={Deaths=1..}] run function thehunt:death
execute as @a[team=!Prey,scores={Deaths=1..}] run scoreboard players set @s Deaths 0

execute as @a[team=Spec] run gamemode spectator @s
