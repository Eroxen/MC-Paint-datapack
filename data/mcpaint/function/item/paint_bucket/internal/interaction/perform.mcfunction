execute if data storage mcpaint:calc internal.paint_bucket.interaction.set_colour on passengers if entity @s[type=item_display] run function mcpaint:item/paint_bucket/internal/interaction/perform/set_colour
execute if data storage mcpaint:calc internal.paint_bucket.interaction{perform:"set_from_book"} run function mcpaint:item/paint_bucket/internal/interaction/perform/set_from_book

execute if data storage mcpaint:calc internal.paint_bucket.interaction.grant_advancement on target run function mcpaint:item/paint_bucket/internal/interaction/grant_advancement with storage mcpaint:calc internal.paint_bucket.interaction
