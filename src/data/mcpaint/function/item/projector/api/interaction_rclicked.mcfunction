execute on vehicle store success score #projector.has_tape mcpaint.calc if data entity @s item.components."minecraft:custom_data".tape_item

execute if score #projector.has_tape mcpaint.calc matches 1 on target store success score #temp mcpaint.calc unless items entity @s weapon.mainhand *
execute if score #projector.has_tape mcpaint.calc matches 1 if score #temp mcpaint.calc matches 1 run function mcpaint:item/projector/internal/remove_tape

execute if score #projector.has_tape mcpaint.calc matches 0 on target store success score #temp mcpaint.calc if items entity @s weapon.mainhand *[custom_data~{mcpaint:{projector_tape:1b}}]
execute if score #projector.has_tape mcpaint.calc matches 0 if score #temp mcpaint.calc matches 1 run function mcpaint:item/projector/internal/add_tape