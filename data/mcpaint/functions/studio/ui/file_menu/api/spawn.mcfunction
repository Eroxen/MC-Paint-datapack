#####################################################################
# studio/ui/file_menu/api/spawn.mcfunction
# written by Eroxen
#
# Executed as the studio marker.
# Opens the file menu window.
#####################################################################

data modify storage mcpaint:calc internal.studio.anchored_pos set value {anchor:[0.5f,1f],offset:[-0.750f,0.125f]}
function mcpaint:studio/internal/ui/spawn_element/anchored_pos
scoreboard players set #studio.ui_element.layer mcpaint.calc 0

data modify storage mcpaint:calc internal.studio.ui.definition set value {name:"file_menu",size:[1500,325],origin:[750,325]}
function mcpaint:studio/internal/ui/spawn_element/init_values
function mcpaint:studio/internal/ui/spawn_element/additional_transform {key:"filename_transform",relative:{translation:[0f,-0.07f,0.01f]}}

data modify storage mcpaint:calc internal.studio.ui.data merge value {filepath:{},filename_text_parts:{name:"unnamed",bytes:"",save_indicator:"",height:0,width:0},filename_text:'{"text":"","color":"black","extra":[{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.filename_text_parts.name"},{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.filename_text_parts.save_indicator"},{"text":" ("},{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.filename_text_parts.width"},{"text":"x"},{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.filename_text_parts.height"},{"text":"px, "},{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.filename_text_parts.bytes"},{"text":")"}]}',text_macro:{save:"\\\\u0201",save_as:"\\\\u0202",load:"\\\\u0203",new_file:"\\\\u0204",undo:"\\\\u0217",redo:"\\\\u0218"}}
data modify storage mcpaint:calc internal.studio.ui.data.filepath set from storage mcpaint:calc internal.studio.data.filepath
execute if data storage mcpaint:calc internal.studio.ui.data.filepath.name run data modify storage mcpaint:calc internal.studio.ui.data.filename_text_parts.name set from storage mcpaint:calc internal.studio.ui.data.filepath.name
execute if data storage mcpaint:calc internal.studio.data{unsaved_changes:1b} run data modify storage mcpaint:calc internal.studio.ui.data.filename_text_parts.save_indicator set value "*"
execute store result score #api.util.bytes mcpaint.calc run data get storage mcpaint:calc internal.studio.data.canvas.resolved_text_size 1
function mcpaint:util/api/format_bytes
data modify storage mcpaint:calc internal.studio.ui.data.filename_text_parts.bytes set from storage mcpaint:calc api.util.str
data modify storage mcpaint:calc internal.studio.ui.data.filename_text_parts.height set from storage mcpaint:calc internal.studio.data.canvas.height_px
data modify storage mcpaint:calc internal.studio.ui.data.filename_text_parts.width set from storage mcpaint:calc internal.studio.data.canvas.width_px
execute if data storage mcpaint:calc internal.studio.data.history.undo[0] run data modify storage mcpaint:calc internal.studio.ui.data.text_macro.undo set value "\\\\u0207"
execute if data storage mcpaint:calc internal.studio.data.history.redo[0] run data modify storage mcpaint:calc internal.studio.ui.data.text_macro.redo set value "\\\\u0208"
function mcpaint:studio/ui/file_menu/internal/generate_text with storage mcpaint:calc internal.studio.ui.data.text_macro

function mcpaint:studio/ui/file_menu/internal/summon with storage mcpaint:calc internal.studio.ui.spawn