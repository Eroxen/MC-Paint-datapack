execute if score #egg.found mcpaint.calc matches 1 run return fail

scoreboard players set #egg.found mcpaint.calc 1
data modify storage mcpaint:calc internal.egg.spawn set value {align:"align z positioned ~ ~ ~0.5 facing ~ ~ ~1 "}
data modify storage mcpaint:calc internal.egg.spawn.rotation set from entity @s Rotation
execute if data entity @s {facing:1b} run data modify storage mcpaint:calc internal.egg.spawn.align set value "align x positioned ~0.5 ~ ~ facing ~-1 ~ ~ "
execute if data entity @s {facing:2b} run data modify storage mcpaint:calc internal.egg.spawn.align set value "align z positioned ~ ~ ~0.5 facing ~ ~ ~-1 "
execute if data entity @s {facing:3b} run data modify storage mcpaint:calc internal.egg.spawn.align set value "align x positioned ~0.5 ~ ~ facing ~1 ~ ~ "

execute if entity @s[tag=mcpaint.painting.transforming] run return fail
tag @s add mcpaint.painting.transforming

data modify storage eroxified2:api entity.schedule set value {id:"mcpaint:painting_transform_dialog_1",delay:20,command:'execute as @a[distance=..32] run function mcpaint:item/egg/internal/banter {text:"{\\"translate\\":\\"mcpaint.message.egg_banter.1\\"}"}'}
function eroxified2:entity/api/schedule
data modify storage eroxified2:api entity.schedule set value {id:"mcpaint:painting_transform_dialog_2",delay:55,command:'execute as @a[distance=..32] run function mcpaint:item/egg/internal/banter {text:"{\\"translate\\":\\"mcpaint.message.egg_banter.2\\"}"}'}
function eroxified2:entity/api/schedule
data modify storage eroxified2:api entity.schedule set value {id:"mcpaint:painting_transform",delay:90,command:"function mcpaint:item/egg/internal/painting/transform"}
function eroxified2:entity/api/schedule