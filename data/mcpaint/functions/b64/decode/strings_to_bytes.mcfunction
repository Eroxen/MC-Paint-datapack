execute unless data storage mcpaint:calc b64.decode.strings_to_bytes_in_progress run function mcpaint:b64/decode/strings_to_bytes_start

scoreboard players set b64.iter mcpaint.calc 0

execute if data storage mcpaint:calc b64.decode.strings[0] if score b64.iter mcpaint.calc < b64.max_iter mcpaint.config run function mcpaint:b64/decode/strings_to_bytes_loop

execute unless data storage mcpaint:calc b64.decode.strings[0] run data remove storage mcpaint:calc b64.decode.strings_to_bytes_in_progress