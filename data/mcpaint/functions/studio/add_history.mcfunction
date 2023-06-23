execute unless data entity @s data.history.undo run data modify entity @s data.history.undo set value []
data modify entity @s data.history.undo prepend from storage mcpaint:calc historical_event
function mcpaint:studio/ui/update_history
execute if data entity @s data.history.undo[50] run data remove entity @s data.history.undo[50]