#####################################################################
# studio/ui/import_code/api/spawn.mcfunction
# written by Eroxen
#
# Executed as the studio marker.
# Opens the MCPPF decoder window.
#####################################################################

data modify storage mcpaint:calc internal.studio.anchored_pos set value {anchor:[0.5f,0.5f],offset:[-0.750f,-0.750f],min_v:0f}
function mcpaint:studio/internal/ui/spawn_element/anchored_pos
scoreboard players set #studio.ui_element.layer mcpaint.calc 1

data modify storage mcpaint:calc internal.studio.ui.definition set value {name:"import_code",size:[1500,1500],origin:[750,1500]}
function mcpaint:studio/internal/ui/spawn_element/init_values
function mcpaint:studio/internal/ui/spawn_element/additional_transform {key:"description_transform",relative:{translation:[0f,-0.5f,0.001f]}}
function mcpaint:studio/internal/ui/spawn_element/additional_transform {key:"filename_transform",relative:{translation:[0f,-1.1f,0.001f]}}
function mcpaint:studio/internal/ui/spawn_element/additional_transform {key:"canvas_origin",relative:{translation:[0.453125f,-0.703125f,0.001f]}}

data modify storage mcpaint:calc internal.studio.ui.data merge value {filepath:{},can_ok:0b}
data modify storage mcpaint:calc internal.studio.ui.data.filepath.author set from entity @p[predicate=mcpaint:same_session] UUID
data modify storage mcpaint:calc internal.studio.ui.data.canvas_origin set from storage mcpaint:calc internal.studio.ui.spawn.canvas_origin.translation

function mcpaint:studio/ui/import_code/internal/summon with storage mcpaint:calc internal.studio.ui.spawn