data remove storage mcpaint:calc inv_historical_event
data modify storage mcpaint:calc historical_event set from entity @s data.history.undo[0]
data remove entity @s data.history.undo[0]

function mcpaint:studio/command/history

execute if data storage mcpaint:calc inv_historical_event run data modify storage mcpaint:calc historical_event set from storage mcpaint:calc inv_historical_event
execute if data storage mcpaint:calc inv_historical_event run function mcpaint:studio/add_redo_history
function mcpaint:studio/ui/update_history