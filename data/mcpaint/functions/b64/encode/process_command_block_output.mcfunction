data modify storage mcpaint:calc b64.encode.strings set value []
data modify storage mcpaint:calc b64.encode.cut_string set string storage mcpaint:calc b64.encode.command_block_output 108
execute store result score length mcpaint.calc run data get storage mcpaint:calc b64.encode.cut_string

# trailing data: 38 chars
scoreboard players remove length mcpaint.calc 21
execute if score length mcpaint.calc matches 256.. run function mcpaint:b64/encode/process_command_block_output_loop
execute if score length mcpaint.calc matches 1..255 run function mcpaint:b64/encode/tail/1_255