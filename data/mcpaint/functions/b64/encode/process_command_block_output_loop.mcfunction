data modify storage mcpaint:calc b64.encode.strings append string storage mcpaint:calc b64.encode.cut_string 0 256
data modify storage mcpaint:calc b64.encode.cut_string set string storage mcpaint:calc b64.encode.cut_string 256
scoreboard players remove length mcpaint.calc 256
execute if score length mcpaint.calc matches 256.. run function mcpaint:b64/encode/process_command_block_output_loop