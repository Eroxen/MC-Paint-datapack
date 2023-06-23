data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.computer.text_display","mcpaint.computer.menu","mcpaint.computer.text_display.files.filenames"],transformation:{scale:[0.375f,0.375f,1f],translation:[2.93f,-0.324f,-0.04f]},text:''}
function mcpaint:block/computer/new_text_display
data modify entity @e[type=text_display,tag=mcpaint.computer.text_display.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData

data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.computer.text_display","mcpaint.computer.menu","mcpaint.computer.text_display.files.selected_filename"],transformation:{scale:[0.375f,0.375f,1f],translation:[2.93f,-0.324f,-0.045f]},text:''}
function mcpaint:block/computer/new_text_display
data modify entity @e[type=text_display,tag=mcpaint.computer.text_display.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData

data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.computer.text_display","mcpaint.computer.menu","mcpaint.computer.text_display.files.canvas"],transformation:{scale:[0f,0f,1f],translation:[0f,0f,-0.04f]},text:''}
function mcpaint:block/computer/new_text_display
data modify entity @e[type=text_display,tag=mcpaint.computer.text_display.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData

data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.computer.text_display","mcpaint.computer.menu","mcpaint.computer.text_display.files.page_number"],transformation:{scale:[0.1875f,0.1875f,1f],translation:[0.1875f,-0.4375f,-0.04f]},text:''}
function mcpaint:block/computer/new_text_display
data modify entity @e[type=text_display,tag=mcpaint.computer.text_display.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData

data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.computer.text_display","mcpaint.computer.menu","mcpaint.computer.text_display.files.action_menu"],transformation:{scale:[0.25f,0.25f,1f],translation:[0.563f,-0.324f,-0.04f]},text:'{"text":"","extra":[{"text":"pp\\n","font":"mcpaint:ink"},{"translate":"block.mcpaint.computer.files.delete"},{"text":"\\n"},{"text":"A","font":"mcpaint:icon"},{"translate":"block.mcpaint.computer.files.encode_base64"},{"text":"\\n"},{"text":"B","font":"mcpaint:icon"},{"translate":"block.mcpaint.computer.files.export_painting"},{"text":"\\n\\n\\n"}]}',alignment:"left",line_width:1000}
function mcpaint:block/computer/new_text_display
data modify entity @e[type=text_display,tag=mcpaint.computer.text_display.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData