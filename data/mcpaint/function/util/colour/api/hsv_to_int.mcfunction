#####################################################################
# util/colour/api/hsv_to_int.mcfunction
# written by Eroxen
#
# Converts the colour in hsv format to MCPaint int.
#
# Storage input:
# - mcpaint:calc api.util.colour.hsv: array of 3 floats
#
# Storage output :
# - mcpaint:calc api.util.colour.int: int in range [0,32768)
#####################################################################

execute store result score #util.colour.hue mcpaint.calc run data get storage mcpaint:calc api.util.colour.hsv[0] 1000
execute store result score #util.colour.saturation mcpaint.calc run data get storage mcpaint:calc api.util.colour.hsv[1] 1000
execute store result score #util.colour.value mcpaint.calc run data get storage mcpaint:calc api.util.colour.hsv[2] 1000

scoreboard players operation #util.colour.c mcpaint.calc = #util.colour.saturation mcpaint.calc
scoreboard players operation #util.colour.c mcpaint.calc *= #util.colour.value mcpaint.calc
scoreboard players operation #util.colour.c mcpaint.calc /= #const.1000 mcpaint.calc

scoreboard players operation #util.colour.x mcpaint.calc = #util.colour.hue mcpaint.calc
scoreboard players operation #util.colour.x mcpaint.calc /= #const.60 mcpaint.calc
scoreboard players operation #util.colour.x mcpaint.calc %= #const.2000 mcpaint.calc
scoreboard players remove #util.colour.x mcpaint.calc 1000
execute if score #util.colour.x mcpaint.calc matches 1.. run scoreboard players operation #util.colour.x mcpaint.calc *= #const.-1 mcpaint.calc
scoreboard players add #util.colour.x mcpaint.calc 1000
scoreboard players operation #util.colour.x mcpaint.calc *= #util.colour.c mcpaint.calc
scoreboard players operation #util.colour.x mcpaint.calc /= #const.1000 mcpaint.calc

scoreboard players set #util.colour.r mcpaint.calc 0
scoreboard players set #util.colour.g mcpaint.calc 0
scoreboard players set #util.colour.b mcpaint.calc 0

scoreboard players operation #util.colour.temp mcpaint.calc = #util.colour.hue mcpaint.calc
scoreboard players operation #util.colour.temp mcpaint.calc /= #const.60000 mcpaint.calc
execute if score #util.colour.temp mcpaint.calc matches 0 run scoreboard players operation #util.colour.r mcpaint.calc = #util.colour.c mcpaint.calc
execute if score #util.colour.temp mcpaint.calc matches 0 run scoreboard players operation #util.colour.g mcpaint.calc = #util.colour.x mcpaint.calc
execute if score #util.colour.temp mcpaint.calc matches 1 run scoreboard players operation #util.colour.r mcpaint.calc = #util.colour.x mcpaint.calc
execute if score #util.colour.temp mcpaint.calc matches 1 run scoreboard players operation #util.colour.g mcpaint.calc = #util.colour.c mcpaint.calc

execute if score #util.colour.temp mcpaint.calc matches 2 run scoreboard players operation #util.colour.g mcpaint.calc = #util.colour.c mcpaint.calc
execute if score #util.colour.temp mcpaint.calc matches 2 run scoreboard players operation #util.colour.b mcpaint.calc = #util.colour.x mcpaint.calc
execute if score #util.colour.temp mcpaint.calc matches 3 run scoreboard players operation #util.colour.g mcpaint.calc = #util.colour.x mcpaint.calc
execute if score #util.colour.temp mcpaint.calc matches 3 run scoreboard players operation #util.colour.b mcpaint.calc = #util.colour.c mcpaint.calc

execute if score #util.colour.temp mcpaint.calc matches 4 run scoreboard players operation #util.colour.r mcpaint.calc = #util.colour.x mcpaint.calc
execute if score #util.colour.temp mcpaint.calc matches 4 run scoreboard players operation #util.colour.b mcpaint.calc = #util.colour.c mcpaint.calc
execute if score #util.colour.temp mcpaint.calc matches 5 run scoreboard players operation #util.colour.r mcpaint.calc = #util.colour.c mcpaint.calc
execute if score #util.colour.temp mcpaint.calc matches 5 run scoreboard players operation #util.colour.b mcpaint.calc = #util.colour.x mcpaint.calc

scoreboard players operation #util.colour.temp mcpaint.calc = #util.colour.value mcpaint.calc
scoreboard players operation #util.colour.temp mcpaint.calc -= #util.colour.c mcpaint.calc
scoreboard players operation #util.colour.r mcpaint.calc += #util.colour.temp mcpaint.calc
scoreboard players operation #util.colour.g mcpaint.calc += #util.colour.temp mcpaint.calc
scoreboard players operation #util.colour.b mcpaint.calc += #util.colour.temp mcpaint.calc


scoreboard players operation #util.colour.r mcpaint.calc *= #const.32 mcpaint.calc
scoreboard players operation #util.colour.g mcpaint.calc *= #const.32 mcpaint.calc
scoreboard players operation #util.colour.b mcpaint.calc *= #const.32 mcpaint.calc
scoreboard players add #util.colour.r mcpaint.calc 500
scoreboard players add #util.colour.g mcpaint.calc 500
scoreboard players add #util.colour.b mcpaint.calc 500
scoreboard players operation #util.colour.r mcpaint.calc /= #const.1000 mcpaint.calc
scoreboard players operation #util.colour.g mcpaint.calc /= #const.1000 mcpaint.calc
scoreboard players operation #util.colour.b mcpaint.calc /= #const.1000 mcpaint.calc
scoreboard players remove #util.colour.r mcpaint.calc 1
scoreboard players remove #util.colour.g mcpaint.calc 1
scoreboard players remove #util.colour.b mcpaint.calc 1
execute unless score #util.colour.r mcpaint.calc matches 0..31 run scoreboard players set #util.colour.r mcpaint.calc 0
execute unless score #util.colour.g mcpaint.calc matches 0..31 run scoreboard players set #util.colour.g mcpaint.calc 0
execute unless score #util.colour.b mcpaint.calc matches 0..31 run scoreboard players set #util.colour.b mcpaint.calc 0

scoreboard players operation #util.colour.int mcpaint.calc = #util.colour.r mcpaint.calc
scoreboard players operation #util.colour.int mcpaint.calc *= #const.32 mcpaint.calc
scoreboard players operation #util.colour.int mcpaint.calc += #util.colour.g mcpaint.calc
scoreboard players operation #util.colour.int mcpaint.calc *= #const.32 mcpaint.calc
scoreboard players operation #util.colour.int mcpaint.calc += #util.colour.b mcpaint.calc

execute store result storage mcpaint:calc api.util.colour.int int 1 run scoreboard players get #util.colour.int mcpaint.calc