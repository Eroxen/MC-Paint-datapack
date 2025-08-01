execute if data storage mcpaint:calc internal.custom_painting.data.options{locked:0b} run data modify storage mcpaint:calc internal.custom_painting.compare_uuid set from storage mcpaint:calc internal.custom_painting.data.owner
execute if data storage mcpaint:calc internal.custom_painting.data.options{locked:0b} store success score #custom_painting.different mcpaint.calc run data modify storage mcpaint:calc internal.custom_painting.compare_uuid set from storage mcpaint:calc internal.custom_painting.user
execute if data storage mcpaint:calc internal.custom_painting.data.options{locked:0b} if score #custom_painting.different mcpaint.calc matches 1 run function mcpaint:custom_painting/internal/interaction/play_sound {name:"minecraft:entity.cat.death",parameters:"1 1"}
execute if data storage mcpaint:calc internal.custom_painting.data.options{locked:0b} if score #custom_painting.different mcpaint.calc matches 1 run return run data modify storage mcpaint:calc internal.custom_painting.data.options.locked set value 1b

execute unless data storage mcpaint:calc internal.custom_painting.data.options{locked:1b} run tag @s remove mcpaint.custom_painting.locked
execute if data storage mcpaint:calc internal.custom_painting.data.options{locked:1b} run tag @s add mcpaint.custom_painting.locked

data modify storage mcpaint:calc internal.custom_painting.data.owner set from storage mcpaint:calc internal.custom_painting.user