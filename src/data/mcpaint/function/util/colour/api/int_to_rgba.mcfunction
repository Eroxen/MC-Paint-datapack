#####################################################################
# util/colour/api/int_to_rgba.mcfunction
# written by Eroxen
#
# Converts the colour in MCPaint int format to RGBA format,
# as used in entity effect particles.
#
# Storage input:
# - mcpaint:calc api.util.colour.int: int in range [0,32768)
#
# Storage output :
# - mcpaint:calc api.util.colour.rgba: double[4]
#####################################################################

execute store result score #util.colour.int mcpaint.calc run data get storage mcpaint:calc api.util.colour.int 1

scoreboard players operation #util.colour.r mcpaint.calc = #util.colour.int mcpaint.calc
scoreboard players operation #util.colour.r mcpaint.calc /= #const.32^2 mcpaint.calc

scoreboard players operation #util.colour.g mcpaint.calc = #util.colour.int mcpaint.calc
scoreboard players operation #util.colour.g mcpaint.calc %= #const.32^2 mcpaint.calc
scoreboard players operation #util.colour.g mcpaint.calc /= #const.32 mcpaint.calc

scoreboard players operation #util.colour.b mcpaint.calc = #util.colour.int mcpaint.calc
scoreboard players operation #util.colour.b mcpaint.calc %= #const.32 mcpaint.calc

data modify storage mcpaint:calc api.util.colour.rgba set value [0d,0d,0d,1d]
execute store result storage mcpaint:calc api.util.colour.rgba[0] double 0.03125 run scoreboard players get #util.colour.r mcpaint.calc
execute store result storage mcpaint:calc api.util.colour.rgba[1] double 0.03125 run scoreboard players get #util.colour.g mcpaint.calc
execute store result storage mcpaint:calc api.util.colour.rgba[2] double 0.03125 run scoreboard players get #util.colour.b mcpaint.calc