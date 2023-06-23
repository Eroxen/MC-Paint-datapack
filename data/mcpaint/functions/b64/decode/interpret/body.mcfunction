execute unless data storage mcpaint:calc b64.decode.interpret_body_in_progress run function mcpaint:b64/decode/interpret/body_start

# resume
execute store result score b64.decode.width mcpaint.calc run data get storage mcpaint:calc b64.decode.interpret_body_in_progress.width 1
scoreboard players set b64.iter mcpaint.calc 0

execute if data storage mcpaint:calc b64.decode.bytes[0] if score b64.iter mcpaint.calc < b64.max_iter mcpaint.config run function mcpaint:b64/decode/interpret/body_loop

# save progress
execute store result storage mcpaint:calc b64.decode.interpret_body_in_progress.width int 1 run scoreboard players get b64.decode.width mcpaint.calc

# finish
execute unless data storage mcpaint:calc b64.decode.bytes[0] run data remove storage mcpaint:calc b64.decode.interpret_body_in_progress
execute unless data storage mcpaint:calc b64.decode.interpret_body_in_progress unless data storage mcpaint:calc b64.decode.colour_array[-1][0] run data remove storage mcpaint:calc b64.decode.colour_array[-1]