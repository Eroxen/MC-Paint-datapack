data modify storage mcpaint:calc EntityData set value {text:'{"text":""}'}
data modify entity @e[type=text_display,tag=mcpaint.computer.text_display.files.filenames,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData
data modify entity @e[type=text_display,tag=mcpaint.computer.text_display.files.canvas,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData