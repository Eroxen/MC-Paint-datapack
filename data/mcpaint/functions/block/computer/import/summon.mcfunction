data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.computer.text_display","mcpaint.computer.menu","mcpaint.computer.text_display.import.canvas"],transformation:{scale:[1f,1f,1f],translation:[0f,0f,-0.04f]},text:'{"text":"","extra":[{"font":"mcpaint:icon","text":"A"}]}',line_width:10000}
function mcpaint:block/computer/new_text_display
data modify entity @e[type=text_display,tag=mcpaint.computer.text_display.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData

data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.computer.text_display","mcpaint.computer.menu","mcpaint.computer.text_display.import.filename"],transformation:{scale:[0.4f,0.4f,1f],translation:[0f,-0.3125f,-0.04f]},text:'{"text":"","extra":[{"font":"mcpaint:icon","text":"A"}]}',line_width:10000}
function mcpaint:block/computer/new_text_display
data modify entity @e[type=text_display,tag=mcpaint.computer.text_display.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData