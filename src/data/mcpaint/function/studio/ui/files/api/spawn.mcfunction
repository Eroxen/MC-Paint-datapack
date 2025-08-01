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
function mcpaint:studio/internal/ui/spawn_element/additional_transform {key:"page_index_transform",relative:{translation:[-0.34375f,-1.42f,0.001f]}}
function mcpaint:studio/internal/ui/spawn_element/additional_transform {key:"filenames_transform",relative:{translation:[0.544f,-1.26f,0.002f]}}
function mcpaint:studio/internal/ui/spawn_element/additional_transform {key:"selected_transform",relative:{translation:[-0.01f,-1.26f,0.001f]}}
function mcpaint:studio/internal/ui/spawn_element/additional_transform {key:"canvas_origin",relative:{translation:[-0.5f,-0.3122596153846154f,0.001f]}}

data modify storage mcpaint:calc internal.studio.ui.data merge value {selected_page:1,selected_work:0,filepath:{}}
data modify storage mcpaint:calc internal.studio.ui.data.filepath.author set from entity @p[predicate=mcpaint:same_session] UUID
data modify storage mcpaint:calc internal.studio.ui.data.canvas_origin set from storage mcpaint:calc internal.studio.ui.spawn.canvas_origin.translation
function mcpaint:studio/ui/files/internal/get_page

function mcpaint:studio/ui/files/internal/summon with storage mcpaint:calc internal.studio.ui.spawn
function mcpaint:studio/ui/files/internal/select_work with storage mcpaint:calc internal.studio.ui.data
data modify entity @e[type=marker,tag=mcpaint.studio.ui_element.files,distance=..0.1,limit=1] data set from storage mcpaint:calc internal.studio.ui.data