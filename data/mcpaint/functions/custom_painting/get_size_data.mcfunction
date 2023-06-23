data modify storage mcpaint:calc painting_size_data set value {}

execute if score width mcpaint.calc matches 1 if score height mcpaint.calc matches 1 run data modify storage mcpaint:calc painting_size_data merge from storage mcpaint:calc painting_sizes_data.1x1
execute if score width mcpaint.calc matches 1 if score height mcpaint.calc matches 2 run data modify storage mcpaint:calc painting_size_data merge from storage mcpaint:calc painting_sizes_data.1x2
execute if score width mcpaint.calc matches 1 if score height mcpaint.calc matches 3 run data modify storage mcpaint:calc painting_size_data merge from storage mcpaint:calc painting_sizes_data.1x3
execute if score width mcpaint.calc matches 1 if score height mcpaint.calc matches 4 run data modify storage mcpaint:calc painting_size_data merge from storage mcpaint:calc painting_sizes_data.1x4
execute if score width mcpaint.calc matches 2 if score height mcpaint.calc matches 1 run data modify storage mcpaint:calc painting_size_data merge from storage mcpaint:calc painting_sizes_data.2x1
execute if score width mcpaint.calc matches 2 if score height mcpaint.calc matches 2 run data modify storage mcpaint:calc painting_size_data merge from storage mcpaint:calc painting_sizes_data.2x2
execute if score width mcpaint.calc matches 2 if score height mcpaint.calc matches 3 run data modify storage mcpaint:calc painting_size_data merge from storage mcpaint:calc painting_sizes_data.2x3
execute if score width mcpaint.calc matches 2 if score height mcpaint.calc matches 4 run data modify storage mcpaint:calc painting_size_data merge from storage mcpaint:calc painting_sizes_data.2x4
execute if score width mcpaint.calc matches 3 if score height mcpaint.calc matches 1 run data modify storage mcpaint:calc painting_size_data merge from storage mcpaint:calc painting_sizes_data.3x1
execute if score width mcpaint.calc matches 3 if score height mcpaint.calc matches 2 run data modify storage mcpaint:calc painting_size_data merge from storage mcpaint:calc painting_sizes_data.3x2
execute if score width mcpaint.calc matches 3 if score height mcpaint.calc matches 3 run data modify storage mcpaint:calc painting_size_data merge from storage mcpaint:calc painting_sizes_data.3x3
execute if score width mcpaint.calc matches 3 if score height mcpaint.calc matches 4 run data modify storage mcpaint:calc painting_size_data merge from storage mcpaint:calc painting_sizes_data.3x4
execute if score width mcpaint.calc matches 4 if score height mcpaint.calc matches 1 run data modify storage mcpaint:calc painting_size_data merge from storage mcpaint:calc painting_sizes_data.4x1
execute if score width mcpaint.calc matches 4 if score height mcpaint.calc matches 2 run data modify storage mcpaint:calc painting_size_data merge from storage mcpaint:calc painting_sizes_data.4x2
execute if score width mcpaint.calc matches 4 if score height mcpaint.calc matches 3 run data modify storage mcpaint:calc painting_size_data merge from storage mcpaint:calc painting_sizes_data.4x3
execute if score width mcpaint.calc matches 4 if score height mcpaint.calc matches 4 run data modify storage mcpaint:calc painting_size_data merge from storage mcpaint:calc painting_sizes_data.4x4