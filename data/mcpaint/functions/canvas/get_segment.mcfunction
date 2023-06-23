execute if score colour mcpaint.calc = first_colour mcpaint.calc run function mcpaint:canvas/get_segment_fc

execute unless score colour mcpaint.calc = first_colour mcpaint.calc run function mcpaint:canvas/get_segment_nfc

execute if score first_colour mcpaint.calc matches -2 run scoreboard players operation first_colour mcpaint.calc = colour mcpaint.calc

scoreboard players set length mcpaint.calc 1
scoreboard players set different mcpaint.calc 0
scoreboard players operation colour mcpaint.calc = new_colour mcpaint.calc