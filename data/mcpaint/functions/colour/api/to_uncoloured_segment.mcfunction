#####################################################################
# colour/api/to_segment.mcfunction
# written by Eroxen
#
# Creates a segment of multiple adjacent pixels with no set colour
#
# Scoreboard input :
# - mcpaint.calc :
#   - length : number of pixels in the range [1, 64]
#
# Storage output :
# - mcpaint:calc :
#   - colour.segment : text element
#####################################################################

execute store result storage mcpaint:calc colour.to_segment.length int 1 run scoreboard players get length mcpaint.calc
execute if score colour mcpaint.calc matches -1 run function mcpaint:colour/internal/to_segment/transparent with storage mcpaint:calc colour.to_segment
execute if score colour mcpaint.calc matches -1 run return 0
function mcpaint:colour/internal/to_segment/opaque_uncoloured with storage mcpaint:calc colour.to_segment