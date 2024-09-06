tag @s remove mcpaint.egg_splat.new

data modify storage eroxified2:api entity.schedule set value {id:"mcpaint:egg_splat_phase_1",delay:1,command:"data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{scale:[1.3f,1.3f,1f],translation:[0f,0f,0f]}}"}
function eroxified2:entity/api/schedule
data modify storage eroxified2:api entity.schedule set value {id:"mcpaint:egg_splat_phase_2",delay:25,command:"data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{translation:[0f,-0.15f,0f],left_rotation:[0f,0f,0.196f,-0.981f]}}"}
function eroxified2:entity/api/schedule
data modify storage eroxified2:api entity.schedule set value {id:"mcpaint:egg_splat_phase_3",delay:55,command:"data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{translation:[0f,-0.3f,0f],left_rotation:[0f,0f,-0.056f,-0.998f]}}"}
function eroxified2:entity/api/schedule
data modify storage eroxified2:api entity.schedule set value {id:"mcpaint:egg_splat_phase_4",delay:90,command:"kill @s"}
function eroxified2:entity/api/schedule