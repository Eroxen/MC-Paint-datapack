data modify storage mcpaint:calc b64.decode set from entity @s data.task.data
function mcpaint:b64/decode/interpret/header
data modify entity @s data.task.data set from storage mcpaint:calc b64.decode
scoreboard players add step mcpaint.calc 1

execute if data storage mcpaint:calc b64.decode.header{first_6_valid:0b} run data modify storage mcpaint:calc notice_popup set value '{"translate":"block.mcpaint.computer.import.popup.cannot_decode_base64","with":[{"text":"Invalid Header ","extra":[{"storage":"mcpaint:calc","nbt":"b64.decode.header.first_6"}]}]}'
execute if data storage mcpaint:calc b64.decode.header{first_6_valid:0b} run function mcpaint:block/computer/task/decode/raise_error