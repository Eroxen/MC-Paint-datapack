$execute store result score #custom_painting.toggle_value mcpaint.calc run data get storage mcpaint:calc internal.custom_painting.data.options.$(option)
scoreboard players add #custom_painting.toggle_value mcpaint.calc 1
$execute if score #custom_painting.toggle_value mcpaint.calc matches $(values).. run scoreboard players set #custom_painting.toggle_value mcpaint.calc 0
$execute store result storage mcpaint:calc internal.custom_painting.data.options.$(option) byte 1 run scoreboard players get #custom_painting.toggle_value mcpaint.calc
scoreboard players set #custom_painting.changed mcpaint.calc 1
$function mcpaint:custom_painting/internal/toggle/$(option)

$execute if data storage mcpaint:calc internal.custom_painting.data.options{$(option):0b} if data storage mcpaint:calc internal.custom_painting.item_interaction.false_sound run function mcpaint:custom_painting/internal/interaction/play_sound with storage mcpaint:calc internal.custom_painting.item_interaction.false_sound
$execute if data storage mcpaint:calc internal.custom_painting.data.options{$(option):1b} if data storage mcpaint:calc internal.custom_painting.item_interaction.true_sound run function mcpaint:custom_painting/internal/interaction/play_sound with storage mcpaint:calc internal.custom_painting.item_interaction.true_sound