data modify storage mcpaint:calc internal.studio.data.history set from entity @e[type=marker,tag=mcpaint.studio.marker,distance=..0.1,limit=1] data.history
execute unless data storage mcpaint:calc internal.studio.data.history.undo[0] run return fail

data modify storage mcpaint:calc internal.studio.event set from storage mcpaint:calc internal.studio.data.history.undo[-1]
data remove storage mcpaint:calc internal.studio.data.history.undo[-1]
function mcpaint:studio/internal/event/apply
execute if score #studio.event.applied mcpaint.calc matches 0 run return fail

data modify storage mcpaint:calc internal.studio.data.history.redo append from storage mcpaint:calc internal.studio.inverse_event
execute if data storage mcpaint:calc internal.studio.data.history.redo[100] run data remove storage mcpaint:calc internal.studio.data.history.redo[0]
data modify entity @e[type=marker,tag=mcpaint.studio.marker,distance=..0.1,limit=1] data.history set from storage mcpaint:calc internal.studio.data.history

function mcpaint:studio/internal/event/history_changed