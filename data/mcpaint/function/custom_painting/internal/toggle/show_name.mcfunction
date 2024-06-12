execute unless data storage mcpaint:calc internal.custom_painting.data.author_name run function mcpaint:database/api/get_author_name with storage mcpaint:calc internal.custom_painting.data.filepath
execute unless data storage mcpaint:calc internal.custom_painting.data.author_name run data modify storage mcpaint:calc internal.custom_painting.data.author_name set from storage mcpaint:calc api.database.author_name
function mcpaint:custom_painting/internal/update/text_message

data modify storage mcpaint:calc internal.custom_painting.message set value ['{"translate":"mcpaint.message.custom_painting_will_show_text"}']
data modify storage mcpaint:calc internal.custom_painting.message append from storage mcpaint:calc internal.custom_painting.data.text_message[]
scoreboard players set #custom_painting.interaction.send_message mcpaint.calc 1