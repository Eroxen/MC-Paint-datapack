#####################################################################
# database/api/load_chars.mcfunction
# written by Eroxen
#
# Loads an unescaped newline character into storage for comparing
# to when validating filenames.
# Run as execute summon with an item display.
#####################################################################

loot replace entity @s contents loot mcpaint:util/database_chars
data modify storage mcpaint:calc internal.database.chars set value {}
data modify storage mcpaint:calc internal.database.chars.newline set from entity @s item.components.minecraft:writable_book_content.pages[0].raw
kill @s