execute on target run function mcpaint:util/api/get_writable_book_pages
execute unless data storage mcpaint:calc api.util.pages run return fail
execute unless data storage mcpaint:calc api.util.pages[0] on target run return run tellraw @s {"translate":"mcpaint.error.empty_book","color":"red","with":[{"translate":"item.minecraft.writable_book"}]}

data modify storage mcpaint:calc internal.paint_bucket.parse set value {}
data modify storage mcpaint:calc internal.paint_bucket.parse.str set from storage mcpaint:calc api.util.pages[0]
data modify storage mcpaint:calc internal.paint_bucket.parse.char set string storage mcpaint:calc internal.paint_bucket.parse.str 0 1
execute unless data storage mcpaint:calc internal.paint_bucket.parse{char:"#"} on target run return run tellraw @s {"translate":"mcpaint.error.invalid_html_colour","color":"red","with":[{"storage":"mcpaint:calc","nbt":"internal.paint_bucket.parse.str"}]}
execute store result score #temp mcpaint.calc run data get storage mcpaint:calc internal.paint_bucket.parse.str
execute unless score #temp mcpaint.calc matches 7 on target run return run tellraw @s {"translate":"mcpaint.error.invalid_html_colour","color":"red","with":[{"storage":"mcpaint:calc","nbt":"internal.paint_bucket.parse.str"}]}

data modify storage mcpaint:calc api.util.colour.html set from storage mcpaint:calc internal.paint_bucket.parse.str
function mcpaint:util/colour/api/html_to_int

data modify storage mcpaint:calc internal.paint_bucket.interaction set value {}
data modify storage mcpaint:calc internal.paint_bucket.interaction.set_colour set from storage mcpaint:calc api.util.colour.int
function mcpaint:item/paint_bucket/internal/interaction/perform

execute on target run advancement grant @s only mcpaint:guide/paint_bucket_html