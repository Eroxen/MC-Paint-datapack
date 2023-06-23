function mcpaint:studio/lose_painter

data modify storage mcpaint:calc spawn_studio set value {could_spawn:0b}
data modify storage mcpaint:calc spawn_studio.facing set from entity @s data.facing
data modify storage mcpaint:calc spawn_studio.size.width set from entity @s data.width
data modify storage mcpaint:calc spawn_studio.size.height set from entity @s data.height
data modify storage mcpaint:calc spawn_studio.filename set from entity @s data.filename
data modify storage mcpaint:calc spawn_studio.unsaved_changes set from entity @s data.unsaved_changes

data modify storage mcpaint:calc canvas set from entity @s data.canvas
function mcpaint:canvas/colour_array_to_resolved_rows_all
function mcpaint:canvas/get_info
data modify storage mcpaint:calc spawn_studio.canvas set from storage mcpaint:calc canvas


function mcpaint:studio/kill
function mcpaint:studio/spawn