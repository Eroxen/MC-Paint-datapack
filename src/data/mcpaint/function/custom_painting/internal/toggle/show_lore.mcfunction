data modify storage mcpaint:calc internal.custom_painting.data.lore set from storage mcpaint:calc internal.custom_painting.used_item.components.minecraft:writable_book_content.pages[0].raw
function mcpaint:custom_painting/internal/update/text_message

data modify storage mcpaint:calc internal.custom_painting.message set value ['{"translate":"mcpaint.message.custom_painting_will_show_text"}']
data modify storage mcpaint:calc internal.custom_painting.message append from storage mcpaint:calc internal.custom_painting.data.text_message[]
scoreboard players set #custom_painting.interaction.send_message mcpaint.calc 1