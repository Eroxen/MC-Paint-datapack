data modify storage mcpaint:calc internal.studio.data.unsaved_changes set value 0b

data modify storage mcpaint:calc api.canvas.canvas set from storage mcpaint:calc internal.studio.data.canvas
function mcpaint:database/api/save_canvas with storage mcpaint:calc internal.studio.data.filepath
tellraw @p[predicate=mcpaint:same_session] {"translate":"mcpaint.message.saved","with":[{"storage":"mcpaint:calc","nbt":"internal.studio.data.filepath.name"}]}
advancement grant @p[predicate=mcpaint:same_session] only mcpaint:guide/save_work

data modify storage mcpaint:calc internal.studio.event_stack set from storage mcpaint:calc internal.studio.ui.data
execute as @e[type=text_display,tag=mcpaint.studio.ui_element.subscribe.saved,distance=..0.1,limit=1] on passengers if entity @s[type=marker] run function mcpaint:studio/internal/event/send_saved with entity @s data.definition
data modify storage mcpaint:calc internal.studio.ui.data set from storage mcpaint:calc internal.studio.event_stack