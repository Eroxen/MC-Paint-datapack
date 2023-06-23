execute unless data entity @s data.history.redo run data modify entity @s data.history.redo set value []
data modify entity @s data.history.redo prepend from storage mcpaint:calc historical_event
function mcpaint:studio/ui/update_history
execute if data entity @s data.history.redo[50] run data remove entity @s data.history.redo[50]