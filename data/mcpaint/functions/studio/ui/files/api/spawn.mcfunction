#####################################################################
# studio/ui/files/api/spawn.mcfunction
# written by Eroxen
#
# Executed as the studio marker.
# Opens the new file browser window.
#####################################################################

data modify storage mcpaint:calc internal.studio.anchored_pos set value {anchor:[0.5f,0.5f],offset:[-0.750f,-0.750f],min_v:0f}
function mcpaint:studio/internal/ui/spawn_element/anchored_pos
scoreboard players set #studio.ui_element.layer mcpaint.calc 1

data modify storage mcpaint:calc internal.studio.ui.definition set value {name:"files",size:[1500,1500],origin:[750,1500]}
function mcpaint:studio/internal/ui/spawn_element/init_values

data modify storage mcpaint:calc internal.studio.ui.data merge value {selected_page:1}
data modify storage mcpaint:calc internal.studio.ui.data.author set from entity @p[predicate=mcpaint:same_session] UUID

function mcpaint:studio/ui/files/internal/summon with storage mcpaint:calc internal.studio.ui.spawn