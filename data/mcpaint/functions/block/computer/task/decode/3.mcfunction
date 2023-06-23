data modify storage mcpaint:calc b64.decode set from entity @s data.task.data
scoreboard players add step mcpaint.calc 1

execute store result score expected_width mcpaint.calc run data get storage mcpaint:calc b64.decode.header.width_px 1
execute store result score expected_height mcpaint.calc run data get storage mcpaint:calc b64.decode.header.height_px 1
execute store result score actual_height mcpaint.calc run data get storage mcpaint:calc b64.decode.colour_array
execute store result score actual_width mcpaint.calc run data get storage mcpaint:calc b64.decode.colour_array[-1]

scoreboard players set right_size mcpaint.calc 0
execute if score expected_width mcpaint.calc = actual_width mcpaint.calc if score expected_height mcpaint.calc = actual_height mcpaint.calc run scoreboard players set right_size mcpaint.calc 1

execute if score right_size mcpaint.calc matches 0 run data modify storage mcpaint:calc notice_popup set value '{"translate":"block.mcpaint.computer.import.popup.cannot_decode_base64","with":[{"text":"Data does not match header: did you copy all required pages?"}]}'
execute if score right_size mcpaint.calc matches 0 run function mcpaint:block/computer/task/decode/raise_error