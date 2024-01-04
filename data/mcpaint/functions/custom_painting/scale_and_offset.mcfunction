scoreboard players set scale_x mcpaint.calc 40960
scoreboard players operation scale_x mcpaint.calc *= #canvas.width_blocks mcpaint.calc
scoreboard players operation scale_x mcpaint.calc /= #canvas.width_px mcpaint.calc

scoreboard players set scale_y mcpaint.calc 40960
scoreboard players operation scale_y mcpaint.calc *= #canvas.height_blocks mcpaint.calc
scoreboard players operation scale_y mcpaint.calc /= #canvas.height_px mcpaint.calc

scoreboard players set offset_x mcpaint.calc 10240
scoreboard players operation offset_x mcpaint.calc *= #canvas.width_blocks mcpaint.calc
scoreboard players operation offset_x mcpaint.calc /= #canvas.width_px mcpaint.calc
scoreboard players set op mcpaint.calc 2
scoreboard players operation offset_x2 mcpaint.calc = #canvas.width_blocks mcpaint.calc
scoreboard players add offset_x2 mcpaint.calc 1
scoreboard players operation offset_x2 mcpaint.calc %= op mcpaint.calc
scoreboard players set op mcpaint.calc 51200
scoreboard players operation offset_x2 mcpaint.calc *= op mcpaint.calc
scoreboard players operation offset_x mcpaint.calc -= offset_x2 mcpaint.calc

scoreboard players set offset_y mcpaint.calc 10240
scoreboard players operation offset_y mcpaint.calc *= #canvas.height_blocks mcpaint.calc
scoreboard players operation offset_y mcpaint.calc /= #canvas.height_px mcpaint.calc
scoreboard players add offset_y mcpaint.calc 51200