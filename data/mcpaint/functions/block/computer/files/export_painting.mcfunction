data modify storage mcpaint:calc custom_painting set value {settings:{}}
function mcpaint:custom_painting/generate_item
data modify storage mcpaint:calc Item set from storage mcpaint:calc custom_painting.Item

summon area_effect_cloud ~ ~ ~ {Tags:["mcpaint.export"]}
data modify entity @e[type=area_effect_cloud,tag=mcpaint.export,distance=..0.1,limit=1] Owner set from storage mcpaint:calc interactor.UUID
execute as @e[type=area_effect_cloud,tag=mcpaint.export,distance=..0.1,limit=1] on origin run function mcpaint:item/give
kill @e[type=area_effect_cloud,tag=mcpaint.export,distance=..0.1]