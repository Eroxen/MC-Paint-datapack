execute on target store success score #temp mcpaint.calc if items entity @s weapon.mainhand *[minecraft:custom_data~{mcpaint:{custom_painting:1b}}]
execute if score #temp mcpaint.calc matches 1 return:
  execute on target run data modify storage mcpaint:calc internal.database.filepath set from entity @s SelectedItem.components."minecraft:entity_data".Item.components."minecraft:custom_data".mcpaint.custom_painting.filepath
  scoreboard players set #placed_painting mcpaint.calc 0
  execute on vehicle on vehicle unless data entity @s data.painting:
    function mcpaint:database/api/get_work with storage mcpaint:calc internal.database.filepath
    execute if score #database.found mcpaint.calc matches 0 run return fail
    data modify storage mcpaint:calc api.canvas.canvas set from storage mcpaint:calc api.database.work.canvas
    function mcpaint:canvas/api/get_info

    data modify storage mcpaint:calc api.assets.get_model set value {z_origin:0f,y_origin:1.5f,center_x:true,width:1,height:1,variant:"canvas"}
    # data modify storage mcpaint:calc api.assets.get_model.variant set from storage mcpaint:calc api.custom_painting.spawn.options.background_variant
    data modify storage mcpaint:calc api.assets.get_model.width set from storage mcpaint:calc api.canvas.canvas.width_blocks
    data modify storage mcpaint:calc api.assets.get_model.height set from storage mcpaint:calc api.canvas.canvas.height_blocks
    function mcpaint:assets/api/get_painting_background
    execute on passengers on passengers if entity @s[tag=mcpaint.easel.painting_background] run data modify entity @s item set from storage mcpaint:calc api.assets.model.item
    execute on passengers on passengers if entity @s[tag=mcpaint.easel.painting_background] run data modify entity @s transformation set from storage mcpaint:calc api.assets.model.transformation

    data modify storage mcpaint:calc api.canvas.get_transformation set value {offset_z:0f}
    data modify storage mcpaint:calc api.canvas.get_transformation.offset_z set from storage mcpaint:calc api.assets.model.surface
    function mcpaint:canvas/api/get_transformation_easel
    data modify storage mcpaint:calc internal.custom_painting.spawn.canvas_transform set from storage mcpaint:calc api.canvas.get_transformation.transformation
    function mcpaint:canvas/api/get_rotation_shading
    execute on passengers on passengers if entity @s[tag=mcpaint.easel.painting_ink] run data modify entity @s text set from storage mcpaint:calc api.canvas.text
    execute on passengers on passengers if entity @s[tag=mcpaint.easel.painting_ink] run data modify entity @s transformation set from storage mcpaint:calc api.canvas.get_transformation.transformation


  execute if score #placed_painting mcpaint.calc matches 1 on target if predicate mcpaint:survival_or_adventure run function eroxified2:item/api/decrement_mainhand