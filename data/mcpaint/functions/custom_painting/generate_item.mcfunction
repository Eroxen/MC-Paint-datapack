function mcpaint:database/open_filepath
function mcpaint:custom_painting/fix_settings

data modify storage mcpaint:calc custom_painting.Item set from storage mcpaint:calc item_registry.custom_painting

summon item_display ~ ~ ~ {Tags:["mcpaint.resolve_text"]}

data modify storage mcpaint:calc resolve_text set value '{"storage":"mcpaint:database","nbt":"search.work.name","color":"yellow","italic":false}'
loot replace entity @e[type=minecraft:item_display,tag=mcpaint.resolve_text,distance=..0.1,limit=1] container.0 loot mcpaint:resolve_text
data modify storage mcpaint:calc custom_painting.Item.tag.display.Lore append from entity @e[type=minecraft:item_display,tag=mcpaint.resolve_text,distance=..0.1,limit=1] item.tag.display.Name

data modify storage mcpaint:calc resolve_text set value '{"translate":"item.mcpaint.custom_painting.lore.original_work","color":"gray","italic":false,"with":[{"storage":"mcpaint:database","nbt":"search.author.name"}]}'
loot replace entity @e[type=minecraft:item_display,tag=mcpaint.resolve_text,distance=..0.1,limit=1] container.0 loot mcpaint:resolve_text
data modify storage mcpaint:calc custom_painting.Item.tag.display.Lore append from entity @e[type=minecraft:item_display,tag=mcpaint.resolve_text,distance=..0.1,limit=1] item.tag.display.Name

data modify storage mcpaint:calc resolve_text set value '{"translate":"item.mcpaint.custom_painting.lore.dimensions","color":"white","italic":false,"with":[{"storage":"mcpaint:database","nbt":"search.work.canvas.width_blocks","color":"white"},{"storage":"mcpaint:database","nbt":"search.work.canvas.height_blocks","color":"white"},{"storage":"mcpaint:database","nbt":"search.work.canvas.width_px","color":"dark_gray"},{"storage":"mcpaint:database","nbt":"search.work.canvas.height_px","color":"dark_gray"}]}'
loot replace entity @e[type=minecraft:item_display,tag=mcpaint.resolve_text,distance=..0.1,limit=1] container.0 loot mcpaint:resolve_text
data modify storage mcpaint:calc custom_painting.Item.tag.display.Lore append from entity @e[type=minecraft:item_display,tag=mcpaint.resolve_text,distance=..0.1,limit=1] item.tag.display.Name

execute if data storage mcpaint:calc custom_painting.settings{background:"canvas"} run data modify storage mcpaint:calc custom_painting.Item.tag.display.Lore append value '{"translate":"item.mcpaint.custom_painting.lore.background","italic":false,"color":"gray","with":[{"translate":"item.mcpaint.custom_painting.lore.background.canvas"}]}'
execute if data storage mcpaint:calc custom_painting.settings{background:"none"} run data modify storage mcpaint:calc custom_painting.Item.tag.display.Lore append value '{"translate":"item.mcpaint.custom_painting.lore.background","italic":false,"color":"gray","with":[{"translate":"item.mcpaint.custom_painting.lore.background.none"}]}'

execute if data storage mcpaint:calc custom_painting.settings{glowing:1b} run data modify storage mcpaint:calc custom_painting.Item.tag.display.Lore append value '{"translate":"item.mcpaint.custom_painting.lore.glowing","italic":false,"color":"aqua"}'

execute if data storage mcpaint:calc custom_painting.settings{long_view_range:1b} run data modify storage mcpaint:calc custom_painting.Item.tag.display.Lore append value '{"translate":"item.mcpaint.custom_painting.lore.long_view_range","italic":false,"color":"gold"}'

kill @e[type=minecraft:item_display,tag=mcpaint.resolve_text,distance=..0.1,limit=1]

data modify storage mcpaint:calc custom_painting.Item.tag.EntityTag.Item.tag.mcpaint.settings set from storage mcpaint:calc custom_painting.settings
data modify storage mcpaint:calc custom_painting.Item.tag.EntityTag.Item.tag.mcpaint.filepath set from storage mcpaint:calc filepath