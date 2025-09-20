tellraw @a {"text":"Prey chosen: ","color":"red","extra":[{"selector":"@a[team=Prey]","color":"yellow"}]}

execute as @a[team=Prey] run title @a subtitle {"text":"Prey chosen: ","color":"red","extra":[{"selector":"@s","color":"yellow"}]}
title @a title ""

tellraw @a[team=Prey] ["",{"text":"The "},{"text":"hunters","color":"aqua"},{"text":" has been "},{"text":"notified","color":"yellow"},{"text":" who the "},{"text":"prey","color":"red"},{"text":" is. "},{"text":"Prepare for trouble.","color":"dark_red"}]
tellraw @a[team=Prey] ["",{"text":"* A "},{"text":"glowing","color":"yellow"},{"text":" effect has been applied to your body."}]
tellraw @a[team=Prey] ["",{"text":"* It fills you with"},{"text":" determination","color":"red"},{"text":"."}]

effect give @a[team=Prey] glowing infinite 1 true

team modify Hunter prefix ["",{"text":"[","color":"aqua"},{"text":"Hunter","color":"dark_aqua"},{"text":"] ","color":"aqua"}]
team modify Prey prefix ["",{"text":"[","color":"red"},{"text":"Prey","color":"dark_red"},{"text":"] ","color":"red"}]
team modify Prey color red

tellraw @a [{"text":"The prey now ","color":"gold"},{"text":"glows","color":"aqua","bold":true},{"text":". Hunt them.","color":"red"}]

gamerule locatorBar false


schedule function thehunt:sfx/bellsfx 1s
schedule function thehunt:sfx/bellsfx 2s
schedule function thehunt:sfx/bellsfx 3s