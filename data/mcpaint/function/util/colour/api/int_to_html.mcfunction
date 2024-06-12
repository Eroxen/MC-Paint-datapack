#####################################################################
# util/colour/api/int_to_html.mcfunction
# written by Eroxen
#
# Converts the colour in MCPaint int format to HTLM string format.
#
# Storage input:
# - mcpaint:calc api.util.colour.int: int in range [0,32768)
#
# Storage output :
# - mcpaint:calc api.util.colour.html: string
#####################################################################

data modify storage mcpaint:calc internal.util.colour set value {index:0}
data modify storage mcpaint:calc internal.util.colour.index set from storage mcpaint:calc api.util.colour.int
function mcpaint:util/colour/internal/html_lookup with storage mcpaint:calc internal.util.colour