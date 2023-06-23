data modify storage mcpaint:calc get_author_name set value {}
summon area_effect_cloud ~ ~ ~ {Tags:["mcpaint.get_author_name"]}
data modify entity @e[type=area_effect_cloud,tag=mcpaint.get_author_name,distance=..0.1,limit=1] Owner set from storage mcpaint:database search.author.UUID
execute as @e[type=area_effect_cloud,tag=mcpaint.get_author_name,distance=..0.1,limit=1] on origin at @s if entity @s[type=player] run function mcpaint:database/get_author_name_2
kill @e[type=area_effect_cloud,tag=mcpaint.get_author_name,distance=..0.1]

execute if data storage mcpaint:calc get_author_name.name run data modify storage mcpaint:database search.author.name set from storage mcpaint:calc get_author_name.name