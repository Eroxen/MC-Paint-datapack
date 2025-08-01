#####################################################################
# util/colour/api/int_to_potion.mcfunction
# written by Eroxen
#
# Converts the colour in MCPaint int format to Minecraft int format,
# as used in potion colours etc.
#
# Storage input:
# - mcpaint:calc api.util.colour.int: int in range [0,32768)
#
# Storage output :
# - mcpaint:calc api.util.colour.potion: int in range [0,16777216)
#####################################################################

execute store result score #util.colour.int mcpaint.calc run data get storage mcpaint:calc api.util.colour.int 1

scoreboard players operation #util.colour.r mcpaint.calc = #util.colour.int mcpaint.calc
scoreboard players operation #util.colour.r mcpaint.calc /= #const.32^2 mcpaint.calc
scoreboard players operation #util.colour.r mcpaint.calc *= #const.8 mcpaint.calc

scoreboard players operation #util.colour.g mcpaint.calc = #util.colour.int mcpaint.calc
scoreboard players operation #util.colour.g mcpaint.calc %= #const.32^2 mcpaint.calc
scoreboard players operation #util.colour.g mcpaint.calc /= #const.32 mcpaint.calc
scoreboard players operation #util.colour.g mcpaint.calc *= #const.8 mcpaint.calc

scoreboard players operation #util.colour.b mcpaint.calc = #util.colour.int mcpaint.calc
scoreboard players operation #util.colour.b mcpaint.calc %= #const.32 mcpaint.calc
scoreboard players operation #util.colour.b mcpaint.calc *= #const.8 mcpaint.calc

scoreboard players operation #util.colour.potion mcpaint.calc = #util.colour.r mcpaint.calc
scoreboard players operation #util.colour.potion mcpaint.calc *= #const.256 mcpaint.calc
scoreboard players operation #util.colour.potion mcpaint.calc += #util.colour.g mcpaint.calc
scoreboard players operation #util.colour.potion mcpaint.calc *= #const.256 mcpaint.calc
scoreboard players operation #util.colour.potion mcpaint.calc += #util.colour.b mcpaint.calc

execute store result storage mcpaint:calc api.util.colour.potion int 1 run scoreboard players get #util.colour.potion mcpaint.calc