scoreboard objectives add mcpaint.calc dummy
scoreboard objectives add mcpaint.extended_brush_stroke dummy
scoreboard objectives add mcpaint.message minecraft.custom:minecraft.leave_game
scoreboard objectives add mcpaint.rp_message_delay dummy
scoreboard objectives add mcpaint.pro_brush_cooldown dummy
scoreboard objectives add mcpaint.reload trigger
scoreboard objectives add mcpaint.debug trigger
scoreboard objectives add mcpaint.sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add mcpaint.config dummy
scoreboard objectives add mcpaint.datafixer_version dummy

scoreboard players set .version mcpaint.datafixer_version 6
schedule function mcpaint:datafixer/clock 1s replace

execute unless score b64.max_iter mcpaint.config matches 1..1000 run scoreboard players set b64.max_iter mcpaint.config 250
execute unless score canvas.async.max_iter mcpaint.config matches 1..100 run scoreboard players set canvas.async.max_iter mcpaint.config 8
# 0: advancements, 1: ticking
execute unless score interaction_detection mcpaint.config matches 0..1 run scoreboard players set canvas.async.max_iter mcpaint.config 0

execute store result score maxCommandChainLength mcpaint.calc run gamerule maxCommandChainLength
execute unless score maxCommandChainLength mcpaint.calc matches 1000000.. run gamerule maxCommandChainLength 1000000

function mcpaint:trigger/revoke_all

### version ###
data modify storage mcpaint:calc version set value {}
data modify storage mcpaint:calc version.message set value "MC Paint v0.7.1 by Eroxen"
data modify storage mcpaint:calc version.rp_version_message set value '{"translate":"mcpaint.message.resource_pack_version","with":[{"translate":"mcpaint.message.resource_pack_version.0.7","with":[{"text":"download page","color":"aqua","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"planetminecraft.com"}]},"clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/mc-paint-create-your-own-custom-paintings/"}},{"text":"/trigger mcpaint.reload","color":"white","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to auto-fill command"}]},"clickEvent":{"action":"suggest_command","value":"/trigger mcpaint.reload"}}],"fallback":"§cYou have installed a version of the Resource Pack that does not mach with the Datapack version (0.7). You can download the correct version from the %1$s.","color":"green","bold":false}],"fallback":""}'
######



data modify storage mcpaint:calc custom_models set value {studio_1x1:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:1}},feedback_egg:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:2}},colour_picker_fg:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:3}},tools:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:4}},custom_painting_frame_1x1:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:5}},colour_picker_bg:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:6}},selection_arrows:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:7}},studio_1x2:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:8}},custom_painting_frame_1x2:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:9}},new_file_popup:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:10}},studio_2x1:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:11}},custom_painting_frame_2x1:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:12}},custom_painting_frame_2x2:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:13}},studio_2x2:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:14}},history_bg:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:15}},history_undo:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:16}},history_redo:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:17}},load_popup:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:18}},selected_subtool:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:19}},tool_colour_picker:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:20}},tool_pen:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:21}},colour_picker_transparent:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:22}},custom_painting_frame_3x1:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:23}},custom_painting_frame_3x2:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:24}},custom_painting_frame_4x1:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:25}},custom_painting_frame_4x2:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:26}},studio_3x1:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:27}},studio_3x2:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:28}},studio_4x1:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:29}},studio_4x2:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:30}},computer_desktop:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:31}},computer_files:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:32}},computer_popup_red:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:33}},computer_import:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:34}},computer_import_blinking:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:35}},loading:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:36}},computer_popup_single:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:37}},computer_popup_blue:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:38}}}




data modify storage mcpaint:calc painting_sizes_data set value {}

data modify storage mcpaint:calc painting_sizes_data.1x1.background_models.canvas set from storage mcpaint:calc custom_models.custom_painting_frame_1x1
data modify storage mcpaint:calc painting_sizes_data.1x2.background_models.canvas set from storage mcpaint:calc custom_models.custom_painting_frame_1x2

data modify storage mcpaint:calc painting_sizes_data.2x1.background_models.canvas set from storage mcpaint:calc custom_models.custom_painting_frame_2x1
data modify storage mcpaint:calc painting_sizes_data.2x2.background_models.canvas set from storage mcpaint:calc custom_models.custom_painting_frame_2x2

data modify storage mcpaint:calc painting_sizes_data.3x1.background_models.canvas set from storage mcpaint:calc custom_models.custom_painting_frame_3x1
data modify storage mcpaint:calc painting_sizes_data.3x2.background_models.canvas set from storage mcpaint:calc custom_models.custom_painting_frame_3x2

data modify storage mcpaint:calc painting_sizes_data.4x1.background_models.canvas set from storage mcpaint:calc custom_models.custom_painting_frame_4x1
data modify storage mcpaint:calc painting_sizes_data.4x2.background_models.canvas set from storage mcpaint:calc custom_models.custom_painting_frame_4x2



data modify storage mcpaint:calc default_studio_data set value {sizes:{}}
data modify storage mcpaint:calc default_studio_data.ui set value {colour_picker:{red:22,green:5,blue:4,selected_colour:"fg",fg_colour:22692,bg_colour:2675,ink_colour:22692},tools:{},file_menu:{lines:['{"translate":"mcpaint.studio.file_menu.save"}','{"translate":"mcpaint.studio.file_menu.save_as","with":[{"text":"A","font":"mcpaint:icon"}]}','{"translate":"mcpaint.studio.file_menu.new_file"}','{"translate":"mcpaint.studio.file_menu.load"}','{"translate":"mcpaint.studio.file_menu.export","with":[{"text":"B","font":"mcpaint:icon"}]}'],unselected_lines:['{"nbt":"default_studio_data.ui.file_menu.lines[0]","storage":"mcpaint:calc","interpret":true,"color":"white"}','{"nbt":"default_studio_data.ui.file_menu.lines[1]","storage":"mcpaint:calc","interpret":true,"color":"white"}','{"nbt":"default_studio_data.ui.file_menu.lines[2]","storage":"mcpaint:calc","interpret":true,"color":"white"}','{"nbt":"default_studio_data.ui.file_menu.lines[3]","storage":"mcpaint:calc","interpret":true,"color":"white"}','{"nbt":"default_studio_data.ui.file_menu.lines[4]","storage":"mcpaint:calc","interpret":true,"color":"white"}'],selected_lines:['{"nbt":"default_studio_data.ui.file_menu.lines[0]","storage":"mcpaint:calc","interpret":true,"color":"#ccccff"}','{"nbt":"default_studio_data.ui.file_menu.lines[1]","storage":"mcpaint:calc","interpret":true,"color":"#ccccff"}','{"nbt":"default_studio_data.ui.file_menu.lines[2]","storage":"mcpaint:calc","interpret":true,"color":"#ccccff"}','{"nbt":"default_studio_data.ui.file_menu.lines[3]","storage":"mcpaint:calc","interpret":true,"color":"#ccccff"}','{"nbt":"default_studio_data.ui.file_menu.lines[4]","storage":"mcpaint:calc","interpret":true,"color":"#ccccff"}']}}

data modify storage mcpaint:calc default_studio_data.tools set value []
data modify storage mcpaint:calc default_studio_data.tools append value {name:"colour_picker",supports_extended_stroke:0b,default_subtool:0}
data modify storage mcpaint:calc default_studio_data.tools append value {name:"pen",supports_extended_stroke:1b,default_subtool:1,subtools:[]}
data modify storage mcpaint:calc default_studio_data.tools[-1].subtools append value {command:"set_pixel",offset:0b}
data modify storage mcpaint:calc default_studio_data.tools[-1].subtools append value {command:"set_pixels",offset:1b,pixels:[{u:0,v:0},{u:0,v:1},{u:1,v:0},{u:1,v:1}]}
data modify storage mcpaint:calc default_studio_data.tools[-1].subtools append value {command:"set_pixels",offset:0b,pixels:[{u:-1,v:-1},{u:-1,v:0},{u:-1,v:1},{u:0,v:-1},{u:0,v:0},{u:0,v:1},{u:1,v:-1},{u:1,v:0},{u:1,v:1}]}
data modify storage mcpaint:calc default_studio_data.tools[-1].subtools append value {command:"set_pixels",offset:1b,pixels:[{u:-1,v:0},{u:-1,v:1},{u:0,v:-1},{u:0,v:0},{u:0,v:1},{u:0,v:2},{u:1,v:-1},{u:1,v:0},{u:1,v:1},{u:1,v:2},{u:2,v:0},{u:2,v:1}]}
data modify storage mcpaint:calc default_studio_data.tools[-1].subtools append value {command:"set_pixels",offset:0b,pixels:[{u:-2,v:-1},{u:-2,v:0},{u:-2,v:1},{u:-1,v:-2},{u:-1,v:-1},{u:-1,v:0},{u:-1,v:1},{u:-1,v:2},{u:0,v:-2},{u:0,v:-1},{u:0,v:0},{u:0,v:1},{u:0,v:2},{u:1,v:-2},{u:1,v:-1},{u:1,v:0},{u:1,v:1},{u:1,v:2},{u:2,v:-1},{u:2,v:0},{u:2,v:1}]}
data modify storage mcpaint:calc default_studio_data.tools[-1].subtools append value {command:"set_pixels",offset:1b,pixels:[{u:-2,v:-1},{u:-2,v:0},{u:-2,v:1},{u:-2,v:2},{u:-1,v:-2},{u:-1,v:-1},{u:-1,v:0},{u:-1,v:1},{u:-1,v:2},{u:-1,v:3},{u:0,v:-2},{u:0,v:-1},{u:0,v:0},{u:0,v:1},{u:0,v:2},{u:0,v:3},{u:1,v:-2},{u:1,v:-1},{u:1,v:0},{u:1,v:1},{u:1,v:2},{u:1,v:3},{u:2,v:-2},{u:2,v:-1},{u:2,v:0},{u:2,v:1},{u:2,v:2},{u:2,v:3},{u:3,v:-1},{u:3,v:0},{u:3,v:1},{u:3,v:2}]}
data modify storage mcpaint:calc default_studio_data.tools[-1].subtools append value {command:"set_pixels",offset:0b,pixels:[{u:-3,v:-1},{u:-3,v:0},{u:-3,v:1},{u:-2,v:-2},{u:-2,v:-1},{u:-2,v:0},{u:-2,v:1},{u:-2,v:2},{u:-1,v:-3},{u:-1,v:-2},{u:-1,v:-1},{u:-1,v:0},{u:-1,v:1},{u:-1,v:2},{u:-1,v:3},{u:0,v:-3},{u:0,v:-2},{u:0,v:-1},{u:0,v:0},{u:0,v:1},{u:0,v:2},{u:0,v:3},{u:1,v:-3},{u:1,v:-2},{u:1,v:-1},{u:1,v:0},{u:1,v:1},{u:1,v:2},{u:1,v:3},{u:2,v:-2},{u:2,v:-1},{u:2,v:0},{u:2,v:1},{u:2,v:2},{u:3,v:-1},{u:3,v:0},{u:3,v:1}]}
data modify storage mcpaint:calc default_studio_data.tools[-1].subtools append value {command:"set_pixels",offset:1b,pixels:[{u:-3,v:-1},{u:-3,v:0},{u:-3,v:1},{u:-3,v:2},{u:-2,v:-2},{u:-2,v:-1},{u:-2,v:0},{u:-2,v:1},{u:-2,v:2},{u:-2,v:3},{u:-1,v:-3},{u:-1,v:-2},{u:-1,v:-1},{u:-1,v:0},{u:-1,v:1},{u:-1,v:2},{u:-1,v:3},{u:-1,v:4},{u:0,v:-3},{u:0,v:-2},{u:0,v:-1},{u:0,v:0},{u:0,v:1},{u:0,v:2},{u:0,v:3},{u:0,v:4},{u:1,v:-3},{u:1,v:-2},{u:1,v:-1},{u:1,v:0},{u:1,v:1},{u:1,v:2},{u:1,v:3},{u:1,v:4},{u:2,v:-3},{u:2,v:-2},{u:2,v:-1},{u:2,v:0},{u:2,v:1},{u:2,v:2},{u:2,v:3},{u:2,v:4},{u:3,v:-2},{u:3,v:-1},{u:3,v:0},{u:3,v:1},{u:3,v:2},{u:3,v:3},{u:4,v:-1},{u:4,v:0},{u:4,v:1},{u:4,v:2}]}

data modify storage mcpaint:calc default_studio_data.ui.tools merge value {selected_tool:2,selected_subtools:[]}
data modify storage mcpaint:calc default_studio_data.ui.tools.selected_tool_data set from storage mcpaint:calc default_studio_data.tools[1]
data modify storage mcpaint:calc default_studio_data.ui.tools.selected_subtools append from storage mcpaint:calc default_studio_data.tools[].default_subtool
data modify storage mcpaint:calc default_studio_data.ui.tools.selected_subtool set from storage mcpaint:calc default_studio_data.tools[1].default_subtool
data modify storage mcpaint:calc default_studio_data.ui.tools.selected_subtool_data set from storage mcpaint:calc default_studio_data.tools[1].subtools[0]

data modify storage mcpaint:calc default_studio_data.sizes.1x1.positioned_ui set value {canvas:{position:[0,0],size:[1000,1000]},colour_picker:{position:[1200,500],size:[1000,1000]},tools:{position:[-750,0],size:[500,1000]},history:{position:[-703,1047],size:[500,250]},filename:{position:[500,1050]},file_menu:{position:[1200,-125],size:[1000,625]}}
data modify storage mcpaint:calc default_studio_data.sizes.1x1.border_model set from storage mcpaint:calc custom_models.studio_1x1
data modify storage mcpaint:calc default_studio_data.sizes.1x1.bg_model set from storage mcpaint:calc custom_models.custom_painting_frame_1x1

data modify storage mcpaint:calc default_studio_data.sizes.1x2.positioned_ui set value {canvas:{position:[0,0],size:[1000,2000]},colour_picker:{position:[1200,500],size:[1000,1000]},tools:{position:[-750,0],size:[500,1000]},history:{position:[-703,1047],size:[500,250]},filename:{position:[500,2050]},file_menu:{position:[1200,-125],size:[1000,625]}}
data modify storage mcpaint:calc default_studio_data.sizes.1x2.border_model set from storage mcpaint:calc custom_models.studio_1x2
data modify storage mcpaint:calc default_studio_data.sizes.1x2.bg_model set from storage mcpaint:calc custom_models.custom_painting_frame_1x2

data modify storage mcpaint:calc default_studio_data.sizes.2x1.positioned_ui set value {canvas:{position:[0,0],size:[2000,1000]},colour_picker:{position:[2200,500],size:[1000,1000]},tools:{position:[-750,0],size:[500,1000]},history:{position:[-703,1047],size:[500,250]},filename:{position:[1000,1050]},file_menu:{position:[2200,-125],size:[1000,625]}}
data modify storage mcpaint:calc default_studio_data.sizes.2x1.border_model set from storage mcpaint:calc custom_models.studio_2x1
data modify storage mcpaint:calc default_studio_data.sizes.2x1.bg_model set from storage mcpaint:calc custom_models.custom_painting_frame_2x1

data modify storage mcpaint:calc default_studio_data.sizes.2x2.positioned_ui set value {canvas:{position:[0,0],size:[2000,2000]},colour_picker:{position:[2200,500],size:[1000,1000]},tools:{position:[-750,0],size:[500,1000]},history:{position:[-703,1047],size:[500,250]},filename:{position:[1000,2050]},file_menu:{position:[2200,-125],size:[1000,625]}}
data modify storage mcpaint:calc default_studio_data.sizes.2x2.border_model set from storage mcpaint:calc custom_models.studio_2x2
data modify storage mcpaint:calc default_studio_data.sizes.2x2.bg_model set from storage mcpaint:calc custom_models.custom_painting_frame_2x2

data modify storage mcpaint:calc default_studio_data.sizes.3x1.positioned_ui set value {canvas:{position:[-1000,0],size:[3000,1000]},colour_picker:{position:[2200,500],size:[1000,1000]},tools:{position:[-1750,0],size:[500,1000]},history:{position:[-1703,1047],size:[500,250]},filename:{position:[500,1050]},file_menu:{position:[2200,-125],size:[1000,625]}}
data modify storage mcpaint:calc default_studio_data.sizes.3x1.border_model set from storage mcpaint:calc custom_models.studio_3x1
data modify storage mcpaint:calc default_studio_data.sizes.3x1.bg_model set from storage mcpaint:calc custom_models.custom_painting_frame_3x1

data modify storage mcpaint:calc default_studio_data.sizes.4x1.positioned_ui set value {canvas:{position:[-1000,0],size:[4000,1000]},colour_picker:{position:[3200,500],size:[1000,1000]},tools:{position:[-1750,0],size:[500,1000]},history:{position:[-1703,1047],size:[500,250]},filename:{position:[1000,1050]},file_menu:{position:[3200,-125],size:[1000,625]}}
data modify storage mcpaint:calc default_studio_data.sizes.4x1.border_model set from storage mcpaint:calc custom_models.studio_4x1
data modify storage mcpaint:calc default_studio_data.sizes.4x1.bg_model set from storage mcpaint:calc custom_models.custom_painting_frame_4x1

data modify storage mcpaint:calc default_studio_data.sizes.3x2.positioned_ui set from storage mcpaint:calc default_studio_data.sizes.3x1.positioned_ui
data modify storage mcpaint:calc default_studio_data.sizes.3x2.positioned_ui.filename set from storage mcpaint:calc default_studio_data.sizes.1x2.positioned_ui.filename
data modify storage mcpaint:calc default_studio_data.sizes.3x2.positioned_ui.canvas.size set value [3000,2000]
data modify storage mcpaint:calc default_studio_data.sizes.3x2.border_model set from storage mcpaint:calc custom_models.studio_3x2
data modify storage mcpaint:calc default_studio_data.sizes.3x2.bg_model set from storage mcpaint:calc custom_models.custom_painting_frame_3x2

data modify storage mcpaint:calc default_studio_data.sizes.4x2.positioned_ui set from storage mcpaint:calc default_studio_data.sizes.4x1.positioned_ui
data modify storage mcpaint:calc default_studio_data.sizes.4x2.positioned_ui.filename set from storage mcpaint:calc default_studio_data.sizes.2x2.positioned_ui.filename
data modify storage mcpaint:calc default_studio_data.sizes.4x2.positioned_ui.canvas.size set value [4000,2000]
data modify storage mcpaint:calc default_studio_data.sizes.4x2.border_model set from storage mcpaint:calc custom_models.studio_4x2
data modify storage mcpaint:calc default_studio_data.sizes.4x2.bg_model set from storage mcpaint:calc custom_models.custom_painting_frame_4x2


scoreboard players set get_colour_cache.0 mcpaint.calc -2
scoreboard players set get_colour_cache.1 mcpaint.calc -2
scoreboard players set get_colour_cache.2 mcpaint.calc -2
scoreboard players set get_colour_cache.3 mcpaint.calc -2
scoreboard players set get_colour_cache.4 mcpaint.calc -2
scoreboard players set get_colour_cache.5 mcpaint.calc -2
scoreboard players set get_colour_cache.6 mcpaint.calc -2
scoreboard players set get_colour_cache.7 mcpaint.calc -2
scoreboard players set get_segment_colour_cache.0 mcpaint.calc -2
scoreboard players set get_segment_colour_cache.1 mcpaint.calc -2
scoreboard players set get_segment_colour_cache.2 mcpaint.calc -2
scoreboard players set get_segment_colour_cache.3 mcpaint.calc -2
scoreboard players set get_segment_colour_cache.4 mcpaint.calc -2
scoreboard players set get_segment_colour_cache.5 mcpaint.calc -2
scoreboard players set get_segment_colour_cache.6 mcpaint.calc -2
scoreboard players set get_segment_colour_cache.7 mcpaint.calc -2
data modify storage mcpaint:calc get_colour_cache set value ['{"text":""}','{"text":""}','{"text":""}','{"text":""}','{"text":""}','{"text":""}','{"text":""}','{"text":""}']
data modify storage mcpaint:calc get_segment_colour_cache set value ['{"text":""}','{"text":""}','{"text":""}','{"text":""}','{"text":""}','{"text":""}','{"text":""}','{"text":""}']

data modify storage mcpaint:calc item_registry set value {}

data modify storage mcpaint:calc item_registry.computer set value {Count:1b,id:"minecraft:player_head",tag:{display:{Name:'{"translate":"item.mcpaint.computer","italic":false}',Lore:['{"translate":"item.mcpaint.computer.lore","color":"gray","italic":false}']},mcpaint:{computer:1b},SkullOwner:{Id:[I;-1827812023,-2016785231,-1154170024,-140817733],Name:"mcpaint.computer",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzAxYTljYTMxMGZiOTZlNmMwYWFhM2VhMWQwNTg1ZjJmNDE3NjVkNmFhOTk3MDNiZjg2MWYyZTc2OWQyNGRjNSJ9fX0="}]}}}}

data modify storage mcpaint:calc item_registry.pro_brush set value {Count:1b,id:"minecraft:shield",tag:{CustomModelData:1,display:{Name:'{"translate":"item.mcpaint.pro_brush","italic":false}',Lore:['{"text":"q: cycle tools"}','{"text":"shift+q: cycle subtools"}','{"text":"f: undo"}','{"text":"shift+f: redo"}']},mcpaint:{pro_brush:1b}}}

data modify storage mcpaint:calc item_registry.fake_player set value {Count:1b,id:"minecraft:armor_stand",tag:{EntityTag:{Tags:["mcpaint.fake_player"],CustomName:'{"text":"Fake Player"}',CustomNameVisible:1b}}}

data modify storage mcpaint:calc item_registry.studio_spawner set value {Count:1b,id:"minecraft:item_frame",tag:{EntityTag:{Silent:1b,Invisible:1b,Tags:["mcpaint.trigger_item_frame"],Item:{Count:1b,id:"minecraft:stone",tag:{display:{Name:'{"translate":"item.mcpaint.illegal_item"}'},mcpaint:{trigger:"studio_spawner"}}}},display:{Name:'{"translate":"item.mcpaint.studio_spawner","italic":false}'},mcpaint:{trigger_item_frame:1b}}}

data modify storage mcpaint:calc item_registry.custom_painting set value {Count:1b,id:"minecraft:item_frame",tag:{EntityTag:{Silent:1b,Invisible:1b,Tags:["mcpaint.trigger_item_frame"],Item:{Count:1b,id:"minecraft:stone",tag:{display:{Name:'{"translate":"item.mcpaint.illegal_item"}'},mcpaint:{trigger:"custom_painting"}}}},display:{Name:'{"translate":"item.mcpaint.custom_painting","italic":false}',Lore:[]},mcpaint:{trigger_item_frame:1b}}}