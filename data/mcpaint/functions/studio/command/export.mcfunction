data modify storage mcpaint:calc filepath set value {author:[I;0,0,0,0],name:""}
data modify storage mcpaint:calc filepath.author set from entity @s data.painter.UUID
data modify storage mcpaint:calc filepath.name set from entity @s data.filename

data modify storage mcpaint:calc custom_painting set value {settings:{}}
function mcpaint:custom_painting/generate_item
data modify storage mcpaint:calc Item set from storage mcpaint:calc custom_painting.Item

summon area_effect_cloud ~ ~ ~ {Tags:["mcpaint.export"]}
data modify entity @e[type=area_effect_cloud,tag=mcpaint.export,distance=..0.1,limit=1] Owner set from entity @s data.painter.UUID
execute as @e[type=area_effect_cloud,tag=mcpaint.export,distance=..0.1,limit=1] on origin run function mcpaint:item/give
kill @e[type=area_effect_cloud,tag=mcpaint.export,distance=..0.1]