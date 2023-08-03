#####################################################################
# colour/api/to_hex.mcfunction
# written by Eroxen
#
# Converts the colour integer to a hexadecimal value
#
# Scoreboard input :
# - mcpaint.calc :
#   - colour : colour in the range [0, 32768)
#
# Storage output :
# - mcpaint:calc :
#   - colour.hex : hex value
#####################################################################

execute store result storage mcpaint:calc colour.to_hex.i int 1 run scoreboard players get colour mcpaint.calc
function mcpaint:colour/internal/to_hex with storage mcpaint:calc colour.to_hex