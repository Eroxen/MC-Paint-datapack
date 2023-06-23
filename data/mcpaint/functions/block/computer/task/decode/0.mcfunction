data modify storage mcpaint:calc b64.decode set from entity @s data.task.data
function mcpaint:b64/decode/strings_to_bytes
data modify entity @s data.task.data set from storage mcpaint:calc b64.decode
execute unless data storage mcpaint:calc b64.decode.strings_to_bytes_in_progress run scoreboard players add step mcpaint.calc 1