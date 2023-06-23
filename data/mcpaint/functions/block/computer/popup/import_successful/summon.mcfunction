data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.computer.item_display","mcpaint.computer.popup","mcpaint.computer.item_display.popup.import_successful"],transformation:{scale:[1f,1f,1f],translation:[0f,0f,0.475f]}}
data modify storage mcpaint:calc EntityData.item set from storage mcpaint:calc custom_models.computer_popup_blue
function mcpaint:block/computer/new_item_display
data modify entity @e[type=item_display,tag=mcpaint.computer.item_display.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData

data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.computer.text_display","mcpaint.computer.popup","mcpaint.computer.text_display.popup.import_successful"],transformation:{scale:[0.25f,0.25f,1f],translation:[-0.2f,-0.18f,-0.025f]},text:'{"translate":"mcpaint.popup.button.ok"}',shadow:1b}
function mcpaint:block/computer/new_text_display
data modify entity @e[type=text_display,tag=mcpaint.computer.text_display.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData

data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.computer.text_display","mcpaint.computer.popup","mcpaint.computer.text_display.popup.import_successful"],transformation:{scale:[0.25f,0.25f,1f],translation:[0.2f,-0.18f,-0.025f]},text:'{"translate":"mcpaint.popup.button.show_file"}',shadow:1b}
function mcpaint:block/computer/new_text_display
data modify entity @e[type=text_display,tag=mcpaint.computer.text_display.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData

data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.computer.text_display","mcpaint.computer.popup","mcpaint.computer.text_display.popup.import_successful"],transformation:{scale:[0.25f,0.25f,1f],translation:[0f,-0.05f,-0.025f]},text:'{"translate":"block.mcpaint.computer.popup.import_successful","with":[{"nbt":"search.work.name","storage":"mcpaint:database"}]}',shadow:1b,line_width:120}
function mcpaint:block/computer/new_text_display
data modify entity @e[type=text_display,tag=mcpaint.computer.text_display.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData