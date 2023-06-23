data modify storage mcpaint:calc empty_canvas.array append from storage mcpaint:calc empty_canvas.element
scoreboard players remove i mcpaint.calc 1
execute if score i mcpaint.calc matches 1.. run function mcpaint:canvas/create_empty_canvas_loop