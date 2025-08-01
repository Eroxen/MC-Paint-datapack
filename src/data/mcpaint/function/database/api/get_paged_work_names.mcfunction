#####################################################################
# database/api/get_paged_work_names.mcfunction
# written by Eroxen
#
# Gets a slice of the author's work's names.
#
# Storage input:
# - mcpaint:calc api.database.page:
#   - author: the author's UUID
#   - size: the size of one page, i.e. how many names will be retrieved at most
#   - index: page index, retrieved item will be works[size*index:size*(index+1)]
#
# Storage output :
# - mcpaint:calc api.database.page:
#   - items: list of work names
#
# Scoreboard output:
# - #database.found mcpaint.calc: (bool) whether or not the requested data was found
# - #database.pages mcpaint.calc: total number of pages
# - #database.works mcpaint.calc: total number of works
# - #database.page.from mcpaint.calc: first index (inclusive)
# - #database.page.to mcpaint.calc: first index (exclusive)
# - #database.page.items mcpaint.calc: number of items on specified page
# - #database.page.index mcpaint.calc: index of the current page
# - #database.page.previous mcpaint.calc: index of the previous page
# - #database.page.next mcpaint.calc: index of the next page
# - #database.page.can_previous mcpaint.calc: if the previous page exists
# - #database.page.can_next mcpaint.calc: if the next page exists
#####################################################################

data modify storage mcpaint:calc api.database.page.items set value []
function mcpaint:database/internal/get_work_names with storage mcpaint:calc api.database.page

execute store result score #database.page.size mcpaint.calc run data get storage mcpaint:calc api.database.page.size 1
execute store result score #database.page.index mcpaint.calc run data get storage mcpaint:calc api.database.page.index 1

execute store result score #database.works mcpaint.calc run data get storage mcpaint:calc internal.database.found.work_names


scoreboard players operation #database.pages mcpaint.calc = #database.works mcpaint.calc
scoreboard players operation #database.pages mcpaint.calc += #database.page.size mcpaint.calc
scoreboard players remove #database.pages mcpaint.calc 1
scoreboard players operation #database.pages mcpaint.calc /= #database.page.size mcpaint.calc

scoreboard players operation #database.page.from mcpaint.calc = #database.page.index mcpaint.calc
scoreboard players operation #database.page.from mcpaint.calc *= #database.page.size mcpaint.calc

scoreboard players operation #database.page.to mcpaint.calc = #database.page.index mcpaint.calc
scoreboard players add #database.page.to mcpaint.calc 1
scoreboard players operation #database.page.to mcpaint.calc *= #database.page.size mcpaint.calc
scoreboard players operation #database.page.to mcpaint.calc < #database.works mcpaint.calc

scoreboard players operation #database.page.items mcpaint.calc = #database.page.to mcpaint.calc
scoreboard players operation #database.page.items mcpaint.calc -= #database.page.from mcpaint.calc

scoreboard players operation #database.page.previous mcpaint.calc = #database.page.index mcpaint.calc
scoreboard players remove #database.page.previous mcpaint.calc 1
scoreboard players operation #database.page.next mcpaint.calc = #database.page.index mcpaint.calc
scoreboard players add #database.page.next mcpaint.calc 1
execute store success score #database.page.can_previous mcpaint.calc if score #database.page.previous mcpaint.calc matches 0..
execute store success score #database.page.can_next mcpaint.calc if score #database.page.next mcpaint.calc < #database.pages mcpaint.calc

data modify storage mcpaint:calc internal.database.get_page set value {}
scoreboard players operation #database.i mcpaint.calc = #database.page.from mcpaint.calc

scoreboard players set #database.found mcpaint.calc 0
execute if score #database.page.from mcpaint.calc matches 0.. if score #database.page.items mcpaint.calc matches 1.. run scoreboard players set #database.found mcpaint.calc 1

execute if score #database.found mcpaint.calc matches 1 run function mcpaint:database/internal/get_paged_work_names/loop