#####################################################################
# studio/ui/canvas/api/spawn.mcfunction
# written by Eroxen
#
# Executed as the studio marker.
# Spawns the canvas ui handler.
#####################################################################

data modify storage mcpaint:calc internal.studio.anchored_pos set value {anchor:[0f,0f],offset:[0f,0f]}
function mcpaint:studio/internal/ui/spawn_element/anchored_pos
scoreboard players set #studio.ui_element.layer mcpaint.calc 0

data modify storage mcpaint:calc internal.studio.ui.definition set value {name:"canvas",size:[1000,1000],origin:[0,0]}
execute store result storage mcpaint:calc internal.studio.ui.definition.size[0] int 1000 run scoreboard players get #studio.width mcpaint.calc
execute store result storage mcpaint:calc internal.studio.ui.definition.size[1] int 1000 run scoreboard players get #studio.height mcpaint.calc
function mcpaint:studio/internal/ui/spawn_element/init_values

### init data ###
data modify storage mcpaint:calc internal.studio.ui.data merge value {last_click:[-1,-1,0]}

function mcpaint:studio/ui/canvas/internal/summon with storage mcpaint:calc internal.studio.ui.spawn