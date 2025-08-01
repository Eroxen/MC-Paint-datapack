#####################################################################
# util/colour/api/int_to_hsv.mcfunction
# written by Eroxen
#
# Converts the colour in MCPaint int format to hsv.
#
# Storage input:
# - mcpaint:calc api.util.colour.int: int in range [0,32768)
#
# Storage output :
# - mcpaint:calc api.util.colour.hsv: array of 3 floats
#####################################################################

execute store result score #util.colour.int mcpaint.calc run data get storage mcpaint:calc api.util.colour.int 1

scoreboard players operation #util.colour.r mcpaint.calc = #util.colour.int mcpaint.calc
scoreboard players operation #util.colour.r mcpaint.calc /= #const.32^2 mcpaint.calc

scoreboard players operation #util.colour.g mcpaint.calc = #util.colour.int mcpaint.calc
scoreboard players operation #util.colour.g mcpaint.calc %= #const.32^2 mcpaint.calc
scoreboard players operation #util.colour.g mcpaint.calc /= #const.32 mcpaint.calc

scoreboard players operation #util.colour.b mcpaint.calc = #util.colour.int mcpaint.calc
scoreboard players operation #util.colour.b mcpaint.calc %= #const.32 mcpaint.calc

scoreboard players operation #util.colour.max mcpaint.calc = #util.colour.r mcpaint.calc
scoreboard players operation #util.colour.min mcpaint.calc = #util.colour.r mcpaint.calc
scoreboard players operation #util.colour.max mcpaint.calc > #util.colour.g mcpaint.calc
scoreboard players operation #util.colour.min mcpaint.calc < #util.colour.g mcpaint.calc
scoreboard players operation #util.colour.max mcpaint.calc > #util.colour.b mcpaint.calc
scoreboard players operation #util.colour.min mcpaint.calc < #util.colour.b mcpaint.calc

scoreboard players set #util.colour.maxi mcpaint.calc 0
execute if score #util.colour.max mcpaint.calc = #util.colour.g mcpaint.calc run scoreboard players set #util.colour.maxi mcpaint.calc 1
execute if score #util.colour.max mcpaint.calc = #util.colour.b mcpaint.calc run scoreboard players set #util.colour.maxi mcpaint.calc 2
scoreboard players operation #util.colour.temp mcpaint.calc = #util.colour.max mcpaint.calc
scoreboard players operation #util.colour.temp mcpaint.calc -= #util.colour.min mcpaint.calc

execute if score #util.colour.maxi mcpaint.calc matches 0 run scoreboard players operation #util.colour.hue mcpaint.calc = #util.colour.g mcpaint.calc
execute if score #util.colour.maxi mcpaint.calc matches 1 run scoreboard players operation #util.colour.hue mcpaint.calc = #util.colour.b mcpaint.calc
execute if score #util.colour.maxi mcpaint.calc matches 2 run scoreboard players operation #util.colour.hue mcpaint.calc = #util.colour.r mcpaint.calc
execute if score #util.colour.maxi mcpaint.calc matches 0 run scoreboard players operation #util.colour.hue mcpaint.calc -= #util.colour.b mcpaint.calc
execute if score #util.colour.maxi mcpaint.calc matches 1 run scoreboard players operation #util.colour.hue mcpaint.calc -= #util.colour.r mcpaint.calc
execute if score #util.colour.maxi mcpaint.calc matches 2 run scoreboard players operation #util.colour.hue mcpaint.calc -= #util.colour.g mcpaint.calc
scoreboard players operation #util.colour.hue mcpaint.calc *= #const.60000 mcpaint.calc
scoreboard players operation #util.colour.hue mcpaint.calc /= #util.colour.temp mcpaint.calc
execute if score #util.colour.maxi mcpaint.calc matches 1 run scoreboard players add #util.colour.hue mcpaint.calc 120000
execute if score #util.colour.maxi mcpaint.calc matches 2 run scoreboard players add #util.colour.hue mcpaint.calc 240000
scoreboard players operation #util.colour.hue mcpaint.calc %= #const.360000 mcpaint.calc

scoreboard players set #util.colour.saturation mcpaint.calc 0
execute unless score #util.colour.max mcpaint.calc matches 0 run scoreboard players operation #util.colour.saturation mcpaint.calc = #util.colour.temp mcpaint.calc
execute unless score #util.colour.max mcpaint.calc matches 0 run scoreboard players operation #util.colour.saturation mcpaint.calc *= #const.1000 mcpaint.calc
execute unless score #util.colour.max mcpaint.calc matches 0 run scoreboard players operation #util.colour.saturation mcpaint.calc /= #util.colour.max mcpaint.calc

scoreboard players operation #util.colour.value mcpaint.calc = #util.colour.max mcpaint.calc
scoreboard players operation #util.colour.value mcpaint.calc *= #const.1000 mcpaint.calc
scoreboard players operation #util.colour.value mcpaint.calc /= #const.32 mcpaint.calc

data modify storage mcpaint:calc api.util.colour.hsv set value [0f,0f,0f]
execute store result storage mcpaint:calc api.util.colour.hsv[0] float 0.001 run scoreboard players get #util.colour.hue mcpaint.calc
execute store result storage mcpaint:calc api.util.colour.hsv[1] float 0.001 run scoreboard players get #util.colour.saturation mcpaint.calc
execute store result storage mcpaint:calc api.util.colour.hsv[2] float 0.001 run scoreboard players get #util.colour.value mcpaint.calc