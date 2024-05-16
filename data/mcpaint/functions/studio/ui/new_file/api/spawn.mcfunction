#####################################################################
# studio/ui/new_file/api/spawn.mcfunction
# written by Eroxen
#
# Executed as the studio marker.
# Opens the new file window.
#####################################################################

function mcpaint:studio/internal/ui/spawn_element/get_info_from_marker
data modify storage mcpaint:calc internal.studio.anchored_pos set value {anchor:[0.5f,0.5f],offset:[-0.750f,-0.750f],min_v:0f}
function mcpaint:studio/internal/ui/spawn_element/anchored_pos
scoreboard players set #studio.ui_element.layer mcpaint.calc 1

data modify storage mcpaint:calc internal.studio.ui.definition set value {name:"new_file",size:[1500,1500],origin:[750,1500]}
function mcpaint:studio/internal/ui/spawn_element/init_values
function mcpaint:studio/internal/ui/spawn_element/additional_transform {key:"filename_transform",relative:{translation:[0f,-0.292f,0.01f]}}
function mcpaint:studio/internal/ui/spawn_element/additional_transform {key:"width_blocks_transform",relative:{translation:[0.141f,-0.511f,0.01f]}}
function mcpaint:studio/internal/ui/spawn_element/additional_transform {key:"width_px_transform",relative:{translation:[0.578f,-0.511f,0.01f]}}
function mcpaint:studio/internal/ui/spawn_element/additional_transform {key:"height_blocks_transform",relative:{translation:[-0.125f,-0.792f,0.01f]}}
function mcpaint:studio/internal/ui/spawn_element/additional_transform {key:"height_px_transform",relative:{translation:[-0.125f,-1.042f,0.01f]}}

data modify storage mcpaint:calc internal.studio.ui.data merge value {filepath:{name:""},filename_text:'{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.filepath.name","color":"white"}',width_px:16,height_px:16,width_blocks:1,height_blocks:1}
data modify storage mcpaint:calc internal.studio.ui.data.filepath.author set from entity @p[predicate=mcpaint:same_session] UUID

function mcpaint:studio/ui/new_file/internal/summon with storage mcpaint:calc internal.studio.ui.spawn