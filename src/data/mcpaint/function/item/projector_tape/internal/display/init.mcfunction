tag @s add mcpaint.entity
tag @s add mcpaint.projector_tape_display
tag @s add mcpaint.entity.text_display.reload
data merge entity @s {background:0,line_width:10000,width:1f,height:1f,view_range:1f}

data modify storage mcpaint:calc api.canvas.canvas set from storage mcpaint:calc api.database.work.canvas
data modify storage mcpaint:calc api.canvas.get_transformation set value {scale:1f,offset_x:0f,offset_y:0f,offset_z:0f,roll:0f}
function mcpaint:canvas/api/get_transformation_contain
data modify entity @s transformation set from storage mcpaint:calc api.canvas.get_transformation.transformation
function mcpaint:canvas/api/apply_to_text_display {axis_shading:false}

function eroxified2:entity/api/get_uuid
data modify storage mcpaint:calc api.projector_tape.display_uuid set from storage eroxified2:api entity.get_uuid