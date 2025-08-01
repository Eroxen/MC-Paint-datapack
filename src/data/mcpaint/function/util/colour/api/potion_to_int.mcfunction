#####################################################################
# util/colour/api/int_to_potion.mcfunction
# written by Eroxen
#
# Converts the colour in Minecraft int format,
# as used in potion colours etc, to MCPaint int format.
#
# Storage input :
# - mcpaint:calc api.util.colour.potion: int in range [0,16777216)
#
# Storage output:
# - mcpaint:calc api.util.colour.int: int in range [0,32768)
#####################################################################

execute store result score #util.colour.potion mcpaint.calc run data get storage mcpaint:calc api.util.colour.potion 1

scoreboard players operation #util.colour.r mcpaint.calc = #util.colour.potion mcpaint.calc
scoreboard players operation #util.colour.r mcpaint.calc /= #const.256^2 mcpaint.calc
scoreboard players operation #util.colour.r mcpaint.calc /= #const.8 mcpaint.calc

scoreboard players operation #util.colour.g mcpaint.calc = #util.colour.potion mcpaint.calc
scoreboard players operation #util.colour.g mcpaint.calc %= #const.256^2 mcpaint.calc
scoreboard players operation #util.colour.g mcpaint.calc /= #const.256 mcpaint.calc
scoreboard players operation #util.colour.g mcpaint.calc /= #const.8 mcpaint.calc

scoreboard players operation #util.colour.b mcpaint.calc = #util.colour.potion mcpaint.calc
scoreboard players operation #util.colour.b mcpaint.calc %= #const.256 mcpaint.calc
scoreboard players operation #util.colour.b mcpaint.calc /= #const.8 mcpaint.calc

scoreboard players operation #util.colour.int mcpaint.calc = #util.colour.r mcpaint.calc
scoreboard players operation #util.colour.int mcpaint.calc *= #const.32 mcpaint.calc
scoreboard players operation #util.colour.int mcpaint.calc += #util.colour.g mcpaint.calc
scoreboard players operation #util.colour.int mcpaint.calc *= #const.32 mcpaint.calc
scoreboard players operation #util.colour.int mcpaint.calc += #util.colour.b mcpaint.calc

execute store result storage mcpaint:calc api.util.colour.int int 1 run scoreboard players get #util.colour.int mcpaint.calc