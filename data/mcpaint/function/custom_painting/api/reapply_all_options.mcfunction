#####################################################################
# custom_painting/api/reapply_all_options.mcfunction
# written by Eroxen
#
# Called as the root item display.
# Updates all settings.
#####################################################################

data modify storage mcpaint:calc internal.custom_painting.data set value {}
data modify storage mcpaint:calc internal.custom_painting.data.options set from storage mcpaint:calc internal.custom_painting.default_options
data modify storage mcpaint:calc internal.custom_painting.data merge from entity @s item.components.minecraft:custom_data.mcpaint.custom_painting

function mcpaint:custom_painting/internal/update/reapply_all_options