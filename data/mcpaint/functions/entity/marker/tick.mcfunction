execute if entity @s[tag=mcpaint.computer.marker] run function mcpaint:block/computer/tick

execute if entity @s[tag=mcpaint.egg_tracker,predicate=!mcpaint:riding] at @s rotated as @s run function mcpaint:egg/end_track
execute if entity @s[tag=mcpaint.egg_tracker,predicate=mcpaint:riding] at @s rotated as @s run function mcpaint:egg/tracking

execute if entity @s[tag=mcpaint.feedback_egg.marker] run function mcpaint:egg/feedback_egg_tick

execute if entity @s[tag=mcpaint.studio.ui_controller] if data entity @s data.animation run function mcpaint:studio/ui/animate

execute if entity @s[tag=mcpaint.studio.marker.kill] at @s rotated as @s run function mcpaint:studio/kill

execute if entity @s[tag=mcpaint.studio.marker.has_painter,nbt={data:{painter:{in_range:0b}}}] at @s rotated as @s run function mcpaint:studio/lose_painter