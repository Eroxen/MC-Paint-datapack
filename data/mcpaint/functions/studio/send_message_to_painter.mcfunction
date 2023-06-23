summon area_effect_cloud ~ ~ ~ {Tags:["mcpaint.send_message"]}
data modify entity @e[type=area_effect_cloud,tag=mcpaint.send_message,distance=..0.1,limit=1] Owner set from entity @s data.painter.UUID
execute as @e[type=area_effect_cloud,tag=mcpaint.send_message,distance=..0.1,limit=1] on origin run tellraw @s {"nbt":"message","storage":"mcpaint:calc","interpret":true}
kill @e[type=area_effect_cloud,tag=mcpaint.get_author_name,distance=..0.1]