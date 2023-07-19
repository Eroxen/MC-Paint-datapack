tag @s remove mcpaint.studio.marker.has_painter
tag @s remove mcpaint.marker.ticking
scoreboard players reset @s mcpaint.attention_link
data remove entity @s data.painter

function mcpaint:studio/ui/close
function mcpaint:studio/popup/close_all

execute rotated as @s run function mcpaint:studio/summon_interactions