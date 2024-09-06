playsound minecraft:block.lantern.place block @a[distance=..32] ~ ~ ~ 1 1
data modify storage mcpaint:calc internal.paint_bucket.place set value {rotation:[0f,0f],potion_colour:16777215}

execute store result score #temp mcpaint.calc run data get storage mcpaint:calc internal.macro.ny 1000
execute store success score #paint_bucket.place.wall mcpaint.calc if score #temp mcpaint.calc matches 0

execute if score #paint_bucket.place.wall mcpaint.calc matches 0 store result score #temp mcpaint.calc run data get entity @s Rotation[0] 0.088888888888888889
execute if score #paint_bucket.place.wall mcpaint.calc matches 1 store result score #temp mcpaint.calc run data get entity @s Rotation[0] 0.022222222222222223
scoreboard players add #temp mcpaint.calc 1
scoreboard players operation #temp mcpaint.calc /= #const.2 mcpaint.calc
execute if score #paint_bucket.place.wall mcpaint.calc matches 0 store result storage mcpaint:calc internal.paint_bucket.place.rotation[0] float 22.5 run scoreboard players get #temp mcpaint.calc
execute if score #paint_bucket.place.wall mcpaint.calc matches 1 store result storage mcpaint:calc internal.paint_bucket.place.rotation[0] float 90 run scoreboard players get #temp mcpaint.calc

data modify storage mcpaint:calc internal.paint_bucket.data set value {colour:0}
data modify storage mcpaint:calc internal.paint_bucket.place.potion_colour set from storage eroxified2:api item.throwable.item.components."minecraft:potion_contents".custom_color
data modify storage mcpaint:calc api.util.colour.potion set from storage mcpaint:calc internal.paint_bucket.place.potion_colour
function mcpaint:util/colour/api/potion_to_int
data modify storage mcpaint:calc internal.paint_bucket.data.colour set from storage mcpaint:calc api.util.colour.int

function mcpaint:item/paint_bucket/internal/place/summon with storage mcpaint:calc internal.paint_bucket.place