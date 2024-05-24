execute on origin unless predicate mcpaint:permission/egg_painting run return fail

data modify storage mcpaint:calc internal.egg.motion set from entity @s Motion
data modify storage mcpaint:calc internal.egg.direction set value {}
data modify storage mcpaint:calc internal.egg.direction.x set from storage mcpaint:calc internal.egg.motion[0]
data modify storage mcpaint:calc internal.egg.direction.y set from storage mcpaint:calc internal.egg.motion[1]
data modify storage mcpaint:calc internal.egg.direction.z set from storage mcpaint:calc internal.egg.motion[2]
function mcpaint:item/egg/internal/search/start with storage mcpaint:calc internal.egg.direction