scoreboard objectives add mcpaint.calc dummy
scoreboard objectives add mcpaint.attention_link dummy

execute store result score maxCommandChainLength mcpaint.calc run gamerule maxCommandChainLength
execute unless score maxCommandChainLength mcpaint.calc matches 1000000.. run gamerule maxCommandChainLength 1000000



data modify storage mcpaint:calc registry set value {custom_model:[]}

data modify storage mcpaint:calc registry.custom_model append value {id:"painting_background",variant:"canvas",width:1,height:1,model:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:360000}}}
data modify storage mcpaint:calc registry.custom_model append value {id:"painting_background",variant:"canvas",width:1,height:2,model:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:360001}}}
data modify storage mcpaint:calc registry.custom_model append value {id:"painting_background",variant:"canvas",width:1,height:3,model:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:360002}}}
data modify storage mcpaint:calc registry.custom_model append value {id:"painting_background",variant:"canvas",width:1,height:4,model:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:360003}}}
data modify storage mcpaint:calc registry.custom_model append value {id:"painting_background",variant:"canvas",width:2,height:1,model:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:360010}}}
data modify storage mcpaint:calc registry.custom_model append value {id:"painting_background",variant:"canvas",width:2,height:2,model:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:360011}}}
data modify storage mcpaint:calc registry.custom_model append value {id:"painting_background",variant:"canvas",width:2,height:3,model:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:360012}}}
data modify storage mcpaint:calc registry.custom_model append value {id:"painting_background",variant:"canvas",width:2,height:4,model:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:360013}}}
data modify storage mcpaint:calc registry.custom_model append value {id:"painting_background",variant:"canvas",width:3,height:1,model:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:360020}}}
data modify storage mcpaint:calc registry.custom_model append value {id:"painting_background",variant:"canvas",width:3,height:2,model:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:360021}}}
data modify storage mcpaint:calc registry.custom_model append value {id:"painting_background",variant:"canvas",width:3,height:3,model:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:360022}}}
data modify storage mcpaint:calc registry.custom_model append value {id:"painting_background",variant:"canvas",width:3,height:4,model:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:360023}}}
data modify storage mcpaint:calc registry.custom_model append value {id:"painting_background",variant:"canvas",width:4,height:1,model:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:360030}}}
data modify storage mcpaint:calc registry.custom_model append value {id:"painting_background",variant:"canvas",width:4,height:2,model:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:360031}}}
data modify storage mcpaint:calc registry.custom_model append value {id:"painting_background",variant:"canvas",width:4,height:3,model:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:360032}}}
data modify storage mcpaint:calc registry.custom_model append value {id:"painting_background",variant:"canvas",width:4,height:4,model:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:360033}}}

data modify storage mcpaint:calc registry.custom_model append value {id:"studio_frame",width:1,height:1,model:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:360100}}}
data modify storage mcpaint:calc registry.custom_model append value {id:"studio_frame",width:1,height:2,model:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:360101}}}
data modify storage mcpaint:calc registry.custom_model append value {id:"studio_frame",width:1,height:3,model:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:360102}}}
data modify storage mcpaint:calc registry.custom_model append value {id:"studio_frame",width:1,height:4,model:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:360103}}}
data modify storage mcpaint:calc registry.custom_model append value {id:"studio_frame",width:2,height:1,model:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:360110}}}
data modify storage mcpaint:calc registry.custom_model append value {id:"studio_frame",width:2,height:2,model:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:360111}}}
data modify storage mcpaint:calc registry.custom_model append value {id:"studio_frame",width:2,height:3,model:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:360112}}}
data modify storage mcpaint:calc registry.custom_model append value {id:"studio_frame",width:2,height:4,model:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:360113}}}
data modify storage mcpaint:calc registry.custom_model append value {id:"studio_frame",width:3,height:1,model:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:360120}}}
data modify storage mcpaint:calc registry.custom_model append value {id:"studio_frame",width:3,height:2,model:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:360121}}}
data modify storage mcpaint:calc registry.custom_model append value {id:"studio_frame",width:3,height:3,model:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:360122}}}
data modify storage mcpaint:calc registry.custom_model append value {id:"studio_frame",width:3,height:4,model:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:360123}}}
data modify storage mcpaint:calc registry.custom_model append value {id:"studio_frame",width:4,height:1,model:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:360130}}}
data modify storage mcpaint:calc registry.custom_model append value {id:"studio_frame",width:4,height:2,model:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:360131}}}
data modify storage mcpaint:calc registry.custom_model append value {id:"studio_frame",width:4,height:3,model:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:360132}}}
data modify storage mcpaint:calc registry.custom_model append value {id:"studio_frame",width:4,height:4,model:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:360133}}}