# ------------------------------------------------------------------------------------------------------------
# Copyright (c) 2025 Gunivers
#
# This file is part of the Bookshelf project (https://github.com/mcbookshelf/bookshelf).
#
# This source code is subject to the terms of the Mozilla Public License, v. 2.0.
# If a copy of the MPL was not distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
#
# Conditions:
# - You may use this file in compliance with the MPL v2.0
# - Any modifications must be documented and disclosed under the same license
#
# For more details, refer to the MPL v2.0.
# ------------------------------------------------------------------------------------------------------------

# Return early to ensure code runs only on the latest available version
execute unless score $bs.load.major load.status matches 3 run return 0
execute unless score $bs.load.minor load.status matches 1 run return 0
execute unless score $bs.load.patch load.status matches 0 run return 0

# Return early if no loading errors are found
execute unless data storage bs:data load.errors run return 1

forceload add -30000000 1600
setblock -30000000 1 1600 minecraft:air
setblock -30000000 0 1600 minecraft:test_block[mode=log]{mode:"log",message:"❌ [Bookshelf] Failed to load some modules due to version conflicts. Run /reload in-game for details."}
setblock -30000000 1 1600 minecraft:redstone_block

# Display error messages for major and minor version conflicts
tellraw @a [{text:"\n⚠ ",color:"#E84635","underlined":true},{text:"BOOKSHELF",bold:true},{text:" • Version Conflict Detected\n"}]
execute if data storage bs:data load.errors[{major:1b}] run tellraw @a [{text:"◇ Major Conflict: ",color:"#F3B512"},{"type":"nbt","storage":"bs:data","nbt":"load.errors[{major:1b}].message","color":"#CCCCCC","interpret":true}]
execute if data storage bs:data load.errors[{major:0b}] run tellraw @a [{text:"◇ Minor/Patch Conflict: ",color:"#F3B512"},{"type":"nbt","storage":"bs:data","nbt":"load.errors[{major:0b}].message","color":"#CCCCCC","interpret":true}]

# Provide resolution steps for minor version errors, or explain that there are no resolution steps for major errors
execute unless data storage bs:data load.errors[{major:1b}] run tellraw @a [{text:"\nℹ Download and place this ",color:"#43A8EC","italic":true},{type:"nbt","storage":"bs:data","nbt":"load.bundle.message","color":"#26BD26","interpret":true}," at the end of your datapack list.\n"]
execute if data storage bs:data load.errors[{major:1b}] run tellraw @a [{text:"\n❌ Cannot be resolved. Please use the same major version across all datapacks or use them at your own risk.\n","color":"#E84635","italic":true}]

return fail
