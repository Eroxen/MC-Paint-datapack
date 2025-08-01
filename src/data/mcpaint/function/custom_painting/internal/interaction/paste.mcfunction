execute unless data storage mcpaint:calc internal.custom_painting.used_item.components.minecraft:custom_data.mcpaint.copied_custom_painting_data run data modify storage mcpaint:calc internal.custom_painting.message set value ['{"translate":"mcpaint.error.copy_by_sneaking","with":[{"keybind":"key.sneak"}]}']
execute unless data storage mcpaint:calc internal.custom_painting.used_item.components.minecraft:custom_data.mcpaint.copied_custom_painting_data run return run scoreboard players set #custom_painting.interaction.send_message mcpaint.calc 1

execute store success score #custom_painting.changed mcpaint.calc run data modify storage mcpaint:calc internal.custom_painting.data merge from storage mcpaint:calc internal.custom_painting.used_item.components.minecraft:custom_data.mcpaint.copied_custom_painting_data
execute if score #custom_painting.changed mcpaint.calc matches 0 run return fail

function mcpaint:custom_painting/internal/update/reapply_all_options