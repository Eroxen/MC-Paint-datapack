#####################################################################
# studio/ui/save_as/api/spawn.mcfunction
# written by Eroxen
#
# Executed as the studio marker.
# Opens the save as window.
#####################################################################

data modify storage mcpaint:calc internal.studio.anchored_pos set value {anchor:[0.5f,0.5f],offset:[-0.750f,-0.625f],min_v:0f}
function mcpaint:studio/internal/ui/spawn_element/anchored_pos
scoreboard players set #studio.ui_element.layer mcpaint.calc 1

data modify storage mcpaint:calc internal.studio.ui.definition set value {name:"save_as",size:[1500,1250],origin:[750,1250]}
function mcpaint:studio/internal/ui/spawn_element/init_values
function mcpaint:studio/internal/ui/spawn_element/additional_transform {key:"filename_transform",relative:{translation:[0f,-0.395f,0.01f]}}

data modify storage mcpaint:calc internal.studio.ui.data merge value {filename_text:'{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.filepath.name","color":"white"}'}
data modify storage mcpaint:calc internal.studio.ui.data.filepath set from storage mcpaint:calc internal.studio.data.filepath
data modify storage mcpaint:calc internal.studio.ui.data.filepath.author set from entity @p[predicate=mcpaint:same_session] UUID
execute unless data storage mcpaint:calc internal.studio.ui.data.filepath.name run function mcpaint:database/api/get_default_filename with storage mcpaint:calc internal.studio.ui.data.filepath
execute unless data storage mcpaint:calc internal.studio.ui.data.filepath.name run data modify storage mcpaint:calc internal.studio.ui.data.filepath.name set from storage mcpaint:calc api.database.filename

function mcpaint:studio/ui/save_as/internal/summon with storage mcpaint:calc internal.studio.ui.spawn