#####################################################################
# colour/api/to_segment.mcfunction
# written by Eroxen
#
# Creates a segment of multiple adjacent pixels of the same colour
#
# Scoreboard input :
# - mcpaint.calc :
#   - colour : colour in the range [0, 32768)
#   - length : number of pixels in the range [1, 64]
#
# Storage output :
# - mcpaint:calc :
#   - colour.segment : text element
#####################################################################

execute store result storage mcpaint:calc colour.to_segment.length int 1 run scoreboard players get length mcpaint.calc
execute if score colour mcpaint.calc matches -1 run function mcpaint:colour/internal/to_segment/transparent with storage mcpaint:calc colour.to_segment
execute if score colour mcpaint.calc matches -1 run return 0

execute store result storage mcpaint:calc colour.to_segment.colour int 1 run scoreboard players get colour mcpaint.calc
function mcpaint:colour/internal/to_segment/opaque with storage mcpaint:calc colour.to_segment