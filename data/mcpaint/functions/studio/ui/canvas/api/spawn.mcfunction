#####################################################################
# studio/ui/canvas/api/spawn.mcfunction
# written by Eroxen
#
# Executed as the studio marker.
# Spawns the canvas ui handler.
#####################################################################

scoreboard players set #studio.ui_element.pos.u mcpaint.calc 0
scoreboard players set #studio.ui_element.pos.v mcpaint.calc 0
scoreboard players set #studio.ui_element.layer mcpaint.calc 0

data modify storage mcpaint:calc internal.studio.ui.definition set value {name:"canvas",size:[1000,1000],origin:[0,0]}
function mcpaint:studio/internal/ui/spawn_element/init_values

### init data ###
data modify storage mcpaint:calc internal.studio.ui.data merge value {last_click:[-1,-1]}

function mcpaint:studio/ui/canvas/internal/summon with storage mcpaint:calc internal.studio.ui.spawn