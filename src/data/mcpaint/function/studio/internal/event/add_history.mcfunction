data modify storage mcpaint:calc internal.studio.data.history.undo append from storage mcpaint:calc internal.studio.inverse_event
data modify storage mcpaint:calc internal.studio.data.history.redo set value []
execute if data storage mcpaint:calc internal.studio.data.history.undo[100] run data remove storage mcpaint:calc internal.studio.data.history.undo[0]

function mcpaint:studio/internal/event/history_changed