#####################################################################
# util/api/get_writable_book_pages.mcfunction
# written by Eroxen
#
# Gets the pages of a Book and Quill in the player's
# offhand or hotbar as a list of strings.
#
# Called as a player.
#
# Storage output :
# - mcpaint:calc api.util.pages: list of strings
#####################################################################

data remove storage mcpaint:calc api.util.pages
execute unless items entity @s weapon.offhand minecraft:writable_book[minecraft:writable_book_content] unless items entity @s hotbar.* minecraft:writable_book[minecraft:writable_book_content] run return run tellraw @s {"translate":"mcpaint.error.cannot_find_item","color":"red","with":[{"translate":"item.minecraft.writable_book"}]}

data remove storage mcpaint:calc internal.util.item
summon item_display ~ ~ ~ {UUID:[I;-1297291389, -1604731264, -876928253, -1864142077]}

scoreboard players set #internal.util.replaced_book mcpaint.calc 0
execute if score #internal.util.replaced_book mcpaint.calc matches 0 if items entity @s weapon.mainhand minecraft:writable_book[minecraft:writable_book_content] store success score #internal.util.replaced_book mcpaint.calc run item replace entity b2ace783-a059-be80-cbbb-230390e37303 contents from entity @s weapon.mainhand
execute if score #internal.util.replaced_book mcpaint.calc matches 0 if items entity @s weapon.offhand minecraft:writable_book[minecraft:writable_book_content] store success score #internal.util.replaced_book mcpaint.calc run item replace entity b2ace783-a059-be80-cbbb-230390e37303 contents from entity @s weapon.offhand
execute if score #internal.util.replaced_book mcpaint.calc matches 0 if items entity @s hotbar.0 minecraft:writable_book[minecraft:writable_book_content] store success score #internal.util.replaced_book mcpaint.calc run item replace entity b2ace783-a059-be80-cbbb-230390e37303 contents from entity @s hotbar.0
execute if score #internal.util.replaced_book mcpaint.calc matches 0 if items entity @s hotbar.1 minecraft:writable_book[minecraft:writable_book_content] store success score #internal.util.replaced_book mcpaint.calc run item replace entity b2ace783-a059-be80-cbbb-230390e37303 contents from entity @s hotbar.1
execute if score #internal.util.replaced_book mcpaint.calc matches 0 if items entity @s hotbar.2 minecraft:writable_book[minecraft:writable_book_content] store success score #internal.util.replaced_book mcpaint.calc run item replace entity b2ace783-a059-be80-cbbb-230390e37303 contents from entity @s hotbar.2
execute if score #internal.util.replaced_book mcpaint.calc matches 0 if items entity @s hotbar.3 minecraft:writable_book[minecraft:writable_book_content] store success score #internal.util.replaced_book mcpaint.calc run item replace entity b2ace783-a059-be80-cbbb-230390e37303 contents from entity @s hotbar.3
execute if score #internal.util.replaced_book mcpaint.calc matches 0 if items entity @s hotbar.4 minecraft:writable_book[minecraft:writable_book_content] store success score #internal.util.replaced_book mcpaint.calc run item replace entity b2ace783-a059-be80-cbbb-230390e37303 contents from entity @s hotbar.4
execute if score #internal.util.replaced_book mcpaint.calc matches 0 if items entity @s hotbar.5 minecraft:writable_book[minecraft:writable_book_content] store success score #internal.util.replaced_book mcpaint.calc run item replace entity b2ace783-a059-be80-cbbb-230390e37303 contents from entity @s hotbar.5
execute if score #internal.util.replaced_book mcpaint.calc matches 0 if items entity @s hotbar.6 minecraft:writable_book[minecraft:writable_book_content] store success score #internal.util.replaced_book mcpaint.calc run item replace entity b2ace783-a059-be80-cbbb-230390e37303 contents from entity @s hotbar.6
execute if score #internal.util.replaced_book mcpaint.calc matches 0 if items entity @s hotbar.7 minecraft:writable_book[minecraft:writable_book_content] store success score #internal.util.replaced_book mcpaint.calc run item replace entity b2ace783-a059-be80-cbbb-230390e37303 contents from entity @s hotbar.7
execute if score #internal.util.replaced_book mcpaint.calc matches 0 if items entity @s hotbar.8 minecraft:writable_book[minecraft:writable_book_content] store success score #internal.util.replaced_book mcpaint.calc run item replace entity b2ace783-a059-be80-cbbb-230390e37303 contents from entity @s hotbar.8

data modify storage mcpaint:calc internal.util.item set from entity b2ace783-a059-be80-cbbb-230390e37303 item
kill b2ace783-a059-be80-cbbb-230390e37303

data modify storage mcpaint:calc api.util.pages set value []
execute if data storage mcpaint:calc internal.util.item.components.minecraft:writable_book_content run data modify storage mcpaint:calc api.util.pages append from storage mcpaint:calc internal.util.item.components.minecraft:writable_book_content.pages[].raw