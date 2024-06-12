data modify storage mcpaint:calc internal.custom_painting.data set from entity @s item.components.minecraft:custom_data.mcpaint.custom_painting
data modify storage mcpaint:calc internal.custom_painting.message set from storage mcpaint:calc internal.custom_painting.data.text_message
scoreboard players set #custom_painting.interaction.send_message mcpaint.calc 1