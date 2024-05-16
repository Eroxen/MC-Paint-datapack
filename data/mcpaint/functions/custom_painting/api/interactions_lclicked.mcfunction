#####################################################################
# custom_painting/api/interactions_lclicked.mcfunction
# written by Eroxen
#
# Called when one of the interactions is left-clicked,
# as the interaction.
#####################################################################

execute if entity @s[tag=mcpaint.custom_painting.interaction.axis_x] align xyz positioned ~ ~0.5 ~0.5 run function mcpaint:custom_painting/internal/interaction/lclick_aligned
execute if entity @s[tag=mcpaint.custom_painting.interaction.axis_y] align xyz positioned ~0.5 ~1 ~0.5 run function mcpaint:custom_painting/internal/interaction/lclick_aligned
execute if entity @s[tag=mcpaint.custom_painting.interaction.axis_z] align xyz positioned ~0.5 ~0.5 ~ run function mcpaint:custom_painting/internal/interaction/lclick_aligned