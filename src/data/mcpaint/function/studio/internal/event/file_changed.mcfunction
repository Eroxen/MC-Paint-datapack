data modify storage mcpaint:calc internal.studio.data.unsaved_changes set value 0b
data modify storage mcpaint:calc internal.studio.data.history set value {undo:[],redo:[]}

function mcpaint:database/api/get_work with storage mcpaint:calc internal.studio.data.filepath
function mcpaint:studio/api/update_canvas
function mcpaint:studio/internal/event/update_size

data modify storage mcpaint:calc internal.studio.event_stack set from storage mcpaint:calc internal.studio.ui.data
execute as @e[type=text_display,tag=mcpaint.studio.ui_element.subscribe.saved,distance=..0.1,limit=1] on passengers if entity @s[type=marker] run function mcpaint:studio/internal/event/send_saved with entity @s data.definition
data modify storage mcpaint:calc internal.studio.ui.data set from storage mcpaint:calc internal.studio.event_stack

data modify storage mcpaint:calc internal.studio.event_stack set from storage mcpaint:calc internal.studio.ui.data
execute as @e[type=text_display,tag=mcpaint.studio.ui_element.subscribe.history_changed,distance=..0.1,limit=1] on passengers if entity @s[type=marker] run function mcpaint:studio/internal/event/send_history_changed with entity @s data.definition
data modify storage mcpaint:calc internal.studio.ui.data set from storage mcpaint:calc internal.studio.event_stack