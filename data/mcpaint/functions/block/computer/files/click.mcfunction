execute if score screenspace_x mcpaint.calc matches 63..187 if score screenspace_y mcpaint.calc matches ..125 as @e[type=marker,tag=mcpaint.computer.marker,distance=..0.1,limit=1] run function mcpaint:block/computer/desktop/open



execute if score screenspace_x mcpaint.calc matches 437..563 if score screenspace_y mcpaint.calc matches ..187 run scoreboard players set add_page mcpaint.calc -1
execute if score screenspace_x mcpaint.calc matches 437..563 if score screenspace_y mcpaint.calc matches ..187 as @e[type=marker,tag=mcpaint.computer.marker,distance=..0.1,limit=1] run function mcpaint:block/computer/files/switch_page

execute if score screenspace_x mcpaint.calc matches 813..938 if score screenspace_y mcpaint.calc matches ..187 run scoreboard players set add_page mcpaint.calc 1
execute if score screenspace_x mcpaint.calc matches 813..938 if score screenspace_y mcpaint.calc matches ..187 as @e[type=marker,tag=mcpaint.computer.marker,distance=..0.1,limit=1] run function mcpaint:block/computer/files/switch_page

execute if score screenspace_x mcpaint.calc matches 437..938 if score screenspace_y mcpaint.calc matches 188..938 run function mcpaint:block/computer/files/click_filenames

execute if score screenspace_x mcpaint.calc matches 63..436 if score screenspace_y mcpaint.calc matches 188..563 run function mcpaint:block/computer/files/click_actions