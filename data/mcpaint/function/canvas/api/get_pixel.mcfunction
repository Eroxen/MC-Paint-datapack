#####################################################################
# canvas/api/get_pixel.mcfunction
# written by Eroxen
#
# Gets the colour value at the indexed pixel.
#
# Storage input:
# - mcpaint:calc api.canvas.canvas: canvas object
# - mcpaint:calc api.canvas.get_pixel:
#   - u: (int) row index
#   - v: (int) column index
#
# Storage output :
# - mcpaint:calc api.canvas.get_pixel:
#   - colour: (int) colour value
#####################################################################

function mcpaint:canvas/internal/get_pixel with storage mcpaint:calc api.canvas.get_pixel