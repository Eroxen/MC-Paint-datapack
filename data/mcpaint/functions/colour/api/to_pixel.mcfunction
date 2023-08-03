#####################################################################
# colour/api/to_pixel.mcfunction
# written by Eroxen
#
# Converts the colour integer to a single pixel text element
#
# Scoreboard input :
# - mcpaint.calc :
#   - colour : colour in the range [0, 32768)
#
# Storage output :
# - mcpaint:calc :
#   - colour.pixel : text element
#####################################################################

execute store result storage mcpaint:calc colour.to_pixel.i int 1 run scoreboard players get colour mcpaint.calc
function mcpaint:colour/internal/to_pixel/lookup with storage mcpaint:calc colour.to_pixel
function mcpaint:colour/internal/to_pixel/text with storage mcpaint:calc colour.to_pixel