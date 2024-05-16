data modify storage mcpaint:calc internal.studio.data.unsaved_changes set value 1b
data modify entity @e[type=marker,tag=mcpaint.studio.marker,distance=..0.1,limit=1] data.unsaved_changes set from storage mcpaint:calc internal.studio.data.unsaved_changes

data modify storage mcpaint:calc internal.studio.event_stack set from storage mcpaint:calc internal.studio.ui.data
execute as @e[type=text_display,tag=mcpaint.studio.ui_element.subscribe.history_changed,distance=..0.1,limit=1] on passengers if entity @s[type=marker] run function mcpaint:studio/internal/event/send_history_changed with entity @s data.definition
data modify storage mcpaint:calc internal.studio.ui.data set from storage mcpaint:calc internal.studio.event_stack