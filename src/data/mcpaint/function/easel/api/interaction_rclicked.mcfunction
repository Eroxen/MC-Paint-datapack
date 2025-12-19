execute on target store success score #temp mcpaint.calc if items entity @s weapon.mainhand *[minecraft:custom_data~{mcpaint:{custom_painting:1b}}]
execute if score #temp mcpaint.calc matches 1 return:
  execute on target run data modify storage mcpaint:calc internal.easel.painting_item set from entity @s SelectedItem
  data modify storage mcpaint:calc internal.easel.painting_item.count set value 1
  data modify storage mcpaint:calc internal.database.filepath set from storage mcpaint:calc internal.easel.painting_item.components."minecraft:entity_data".Item.components."minecraft:custom_data".mcpaint.custom_painting.filepath
  scoreboard players set #placed_painting mcpaint.calc 0
  execute on vehicle on vehicle unless data entity @s data.painting:
    data modify entity @s equipment.feet set from storage mcpaint:calc internal.easel.painting_item
    data modify entity @s data.painting.filepath set from storage mcpaint:calc internal.database.filepath
    data modify storage mcpaint:calc internal.easel.options set from storage mcpaint:calc internal.easel.painting_item.components."minecraft:entity_data".Item.components."minecraft:custom_data".mcpaint.custom_painting.options
    data modify entity @s data.painting.options set from storage mcpaint:calc internal.easel.options
    function mcpaint:database/api/get_work with storage mcpaint:calc internal.database.filepath
    execute if score #database.found mcpaint.calc matches 0 run return fail
    data modify storage mcpaint:calc api.canvas.canvas set from storage mcpaint:calc api.database.work.canvas
    function mcpaint:canvas/api/get_info

    data modify storage mcpaint:calc api.assets.get_model set value {z_origin:0f,y_origin:1.5f,center_x:true,width:1,height:1,variant:"canvas"}
    execute store result score #height mcpaint.calc run data get entity @s data.bar_height 1
    scoreboard players add #height mcpaint.calc 24
    execute store result storage mcpaint:calc api.assets.get_model.y_origin float 0.0625 run scoreboard players get #height mcpaint.calc
    data modify storage mcpaint:calc api.assets.get_model.variant set from entity @s data.painting.options.background_variant
    data modify storage mcpaint:calc api.assets.get_model.width set from storage mcpaint:calc api.canvas.canvas.width_blocks
    data modify storage mcpaint:calc api.assets.get_model.height set from storage mcpaint:calc api.canvas.canvas.height_blocks
    function mcpaint:assets/api/get_painting_background
    execute on passengers on passengers if entity @s[tag=mcpaint.easel.painting_background] run data modify entity @s item set from storage mcpaint:calc api.assets.model.item
    execute on passengers on passengers if entity @s[tag=mcpaint.easel.painting_background] run data modify entity @s transformation set from storage mcpaint:calc api.assets.model.transformation

    data modify storage mcpaint:calc api.canvas.get_transformation set value {offset_z:0f,bar_height:0}
    data modify storage mcpaint:calc api.canvas.get_transformation.offset_z set from storage mcpaint:calc api.assets.model.surface
    data modify storage mcpaint:calc api.canvas.get_transformation.bar_height set from entity @s data.bar_height
    function mcpaint:canvas/api/get_transformation_easel
    execute if data storage mcpaint:calc internal.easel.options{axis_shading:1b} run function mcpaint:canvas/api/get_rotation_shading
    execute if data storage mcpaint:calc internal.easel.options{axis_shading:0b} run function mcpaint:canvas/api/get_fullbright_shading
    execute on passengers on passengers if entity @s[tag=mcpaint.easel.painting_ink] run data modify entity @s text set from storage mcpaint:calc api.canvas.text
    execute on passengers on passengers if entity @s[tag=mcpaint.easel.painting_ink] run data modify entity @s transformation set from storage mcpaint:calc api.canvas.get_transformation.transformation
    execute if data storage mcpaint:calc internal.easel.options{glowing:0b} on passengers on passengers if entity @s[tag=mcpaint.easel.painting_ink] run data remove entity @s brightness
    execute if data storage mcpaint:calc internal.easel.options{glowing:1b} on passengers on passengers if entity @s[tag=mcpaint.easel.painting_ink] run data modify entity @s brightness set value {sky:15,block:15}
    execute store result score #custom_painting.transparency mcpaint.calc run data get storage mcpaint:calc internal.easel.options.transparency -28
    scoreboard players remove #custom_painting.transparency mcpaint.calc 1
    execute if score #custom_painting.transparency mcpaint.calc matches ..-129 run scoreboard players add #custom_painting.transparency mcpaint.calc 256
    execute on passengers on passengers if entity @s[tag=mcpaint.easel.painting_ink] store result entity @s text_opacity byte 1 run scoreboard players get #custom_painting.transparency mcpaint.calc

    data modify storage mcpaint:calc api.canvas.canvas.resolved_text set value ""
    data modify entity @s data.painting.canvas set from storage mcpaint:calc api.canvas.canvas

    playsound minecraft:entity.item_frame.add_item block @a[distance=..16]
    scoreboard players set #placed_painting mcpaint.calc 1

  execute if score #placed_painting mcpaint.calc matches 1 on target if predicate mcpaint:survival_or_adventure run function eroxified2:item/api/decrement_mainhand

execute on target store success score #temp mcpaint.calc if items entity @s weapon.mainhand *
execute if score #temp mcpaint.calc matches 0 return:
  execute on target store success score #temp mcpaint.calc if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{sneak:1b}}}}
  execute on vehicle on vehicle:
    execute unless data entity @s data.painting run return fail
    execute if score #temp mcpaint.calc matches 1 run scoreboard players set #temp mcpaint.calc -1
    execute if score #temp mcpaint.calc matches 0 run scoreboard players set #temp mcpaint.calc 1
    execute store result score #height mcpaint.calc run data get entity @s data.bar_height 1
    scoreboard players operation #height mcpaint.calc += #temp mcpaint.calc
    execute unless score #height mcpaint.calc matches -4..16 run return fail
    execute store result entity @s data.bar_height int 1 run scoreboard players get #height mcpaint.calc
    execute on passengers on passengers if entity @s[tag=mcpaint.easel.bar] store result entity @s transformation.translation[1] float 0.0625 run scoreboard players get #height mcpaint.calc

    data modify storage mcpaint:calc api.canvas.canvas set from entity @s data.painting.canvas

    data modify storage mcpaint:calc api.assets.get_model set value {z_origin:0f,y_origin:1.5f,center_x:true,width:1,height:1,variant:"canvas"}
    execute store result score #height mcpaint.calc run data get entity @s data.bar_height 1
    scoreboard players add #height mcpaint.calc 24
    execute store result storage mcpaint:calc api.assets.get_model.y_origin float 0.0625 run scoreboard players get #height mcpaint.calc
    data modify storage mcpaint:calc api.assets.get_model.variant set from entity @s data.painting.options.background_variant
    data modify storage mcpaint:calc api.assets.get_model.width set from storage mcpaint:calc api.canvas.canvas.width_blocks
    data modify storage mcpaint:calc api.assets.get_model.height set from storage mcpaint:calc api.canvas.canvas.height_blocks
    function mcpaint:assets/api/get_painting_background
    execute on passengers on passengers if entity @s[tag=mcpaint.easel.painting_background] run data modify entity @s transformation set from storage mcpaint:calc api.assets.model.transformation

    data modify storage mcpaint:calc api.canvas.get_transformation set value {offset_z:0f,bar_height:0}
    data modify storage mcpaint:calc api.canvas.get_transformation.offset_z set from storage mcpaint:calc api.assets.model.surface
    data modify storage mcpaint:calc api.canvas.get_transformation.bar_height set from entity @s data.bar_height
    function mcpaint:canvas/api/get_transformation_easel
    execute on passengers on passengers if entity @s[tag=mcpaint.easel.painting_ink] run data modify entity @s transformation set from storage mcpaint:calc api.canvas.get_transformation.transformation

    playsound minecraft:entity.item_frame.rotate_item block @a[distance=..16]