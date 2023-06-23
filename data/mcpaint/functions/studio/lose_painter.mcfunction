tag @s remove mcpaint.studio.marker.has_painter
tag @s remove mcpaint.marker.ticking
data remove entity @s data.painter

function mcpaint:studio/ui/close
function mcpaint:studio/popup/close_all

execute rotated as @s run function mcpaint:studio/summon_interactions

#data modify entity @e[type=item_display,tag=mcpaint.studio.item_display,distance=..0.1,limit=1] Glowing set value 0b