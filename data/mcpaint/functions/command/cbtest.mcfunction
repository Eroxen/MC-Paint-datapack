scoreboard players set a test 0

setblock 0 -48 0 air
setblock 0 -47 0 redstone_block
setblock 0 -48 0 command_block{Command:"scoreboard players add a test 1"}
#setblock 0 -47 0 air

setblock 0 -48 0 command_block{Command:"scoreboard players add a test 1"} destroy
setblock 0 -47 0 redstone_block
setblock 0 -47 0 air

setblock 0 -48 0 air
setblock 0 -48 0 command_block{Command:"scoreboard players add a test 1"}
setblock 0 -47 0 redstone_block
setblock 0 -47 0 air