#####################################################################
# util/colour/api/html_to_int.mcfunction
# written by Eroxen
#
# Converts the colour in HTML string format to MCPaint int format.
#
# Storage input :
# - mcpaint:calc api.util.colour.html: string
#
# Storage output:
# - mcpaint:calc api.util.colour.int: int in range [0,32768)
#####################################################################

data modify storage mcpaint:calc internal.util.colour set value {}
data modify storage mcpaint:calc internal.util.colour.str set from storage mcpaint:calc api.util.colour.html

data modify storage mcpaint:calc internal.util.colour.char set string storage mcpaint:calc internal.util.colour.str 1 2
function mcpaint:util/colour/internal/hex_to_int with storage mcpaint:calc internal.util.colour
scoreboard players operation #util.colour.r mcpaint.calc = #util.colour.lookup mcpaint.calc
scoreboard players operation #util.colour.r mcpaint.calc *= #const.16 mcpaint.calc
data modify storage mcpaint:calc internal.util.colour.char set string storage mcpaint:calc internal.util.colour.str 2 3
function mcpaint:util/colour/internal/hex_to_int with storage mcpaint:calc internal.util.colour
scoreboard players operation #util.colour.r mcpaint.calc += #util.colour.lookup mcpaint.calc

data modify storage mcpaint:calc internal.util.colour.char set string storage mcpaint:calc internal.util.colour.str 3 4
function mcpaint:util/colour/internal/hex_to_int with storage mcpaint:calc internal.util.colour
scoreboard players operation #util.colour.g mcpaint.calc = #util.colour.lookup mcpaint.calc
scoreboard players operation #util.colour.g mcpaint.calc *= #const.16 mcpaint.calc
data modify storage mcpaint:calc internal.util.colour.char set string storage mcpaint:calc internal.util.colour.str 4 5
function mcpaint:util/colour/internal/hex_to_int with storage mcpaint:calc internal.util.colour
scoreboard players operation #util.colour.g mcpaint.calc += #util.colour.lookup mcpaint.calc

data modify storage mcpaint:calc internal.util.colour.char set string storage mcpaint:calc internal.util.colour.str 5 6
function mcpaint:util/colour/internal/hex_to_int with storage mcpaint:calc internal.util.colour
scoreboard players operation #util.colour.b mcpaint.calc = #util.colour.lookup mcpaint.calc
scoreboard players operation #util.colour.b mcpaint.calc *= #const.16 mcpaint.calc
data modify storage mcpaint:calc internal.util.colour.char set string storage mcpaint:calc internal.util.colour.str 6 7
function mcpaint:util/colour/internal/hex_to_int with storage mcpaint:calc internal.util.colour
scoreboard players operation #util.colour.b mcpaint.calc += #util.colour.lookup mcpaint.calc

scoreboard players operation #util.colour.r mcpaint.calc /= #const.8 mcpaint.calc
scoreboard players operation #util.colour.g mcpaint.calc /= #const.8 mcpaint.calc
scoreboard players operation #util.colour.b mcpaint.calc /= #const.8 mcpaint.calc

scoreboard players operation #util.colour.int mcpaint.calc = #util.colour.r mcpaint.calc
scoreboard players operation #util.colour.int mcpaint.calc *= #const.32 mcpaint.calc
scoreboard players operation #util.colour.int mcpaint.calc += #util.colour.g mcpaint.calc
scoreboard players operation #util.colour.int mcpaint.calc *= #const.32 mcpaint.calc
scoreboard players operation #util.colour.int mcpaint.calc += #util.colour.b mcpaint.calc

execute store result storage mcpaint:calc api.util.colour.int int 1 run scoreboard players get #util.colour.int mcpaint.calc