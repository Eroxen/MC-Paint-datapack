data modify storage mcpaint:calc internal.studio.data.history set from entity @e[type=marker,tag=mcpaint.studio.marker,distance=..0.1,limit=1] data.history
data modify storage mcpaint:calc internal.studio.data.history.undo append from storage mcpaint:calc internal.studio.inverse_event
data modify storage mcpaint:calc internal.studio.data.history.redo set value []
execute if data storage mcpaint:calc internal.studio.data.history.undo[100] run data remove storage mcpaint:calc internal.studio.data.history.undo[0]
data modify entity @e[type=marker,tag=mcpaint.studio.marker,distance=..0.1,limit=1] data.history set from storage mcpaint:calc internal.studio.data.history

function mcpaint:studio/internal/event/history_changed