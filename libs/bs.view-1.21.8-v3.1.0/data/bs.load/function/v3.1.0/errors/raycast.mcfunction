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
execute unless score $bs.raycast.major load.status matches 3 run return 0
execute unless score $bs.raycast.minor load.status matches 1 run return 0
execute unless score $bs.raycast.patch load.status matches 0 run return 0

# Format an error message for conflicting versions
data modify storage bs:data load.errors append value {major:1b,message:{text:"[bs.raycast]",hover_event:{action:"show_text",value:[{text:"[v",color:"#CCCCCC"},{type:"nbt",storage:"bs:data",nbt:"load.modules[{module:'bs.raycast',enabled:1b}].version"},{text:" ("},{text:"✔ enabled",color:"#26BD26"},{text:"), v"},{type:"nbt",storage:"bs:data",nbt:"load.modules[{module:'bs.raycast',enabled:0b}].version","separator":", v"},{text:"]"}]}}}

# Return early if major version conflicts exist
execute if score #bs.raycast.major_versions load.status matches 2.. run return 0

# Mark the error as non major and create a downloadable bundle to resolve the issue
data modify storage bs:data load.errors[-1].major set value 0b
function bs.load:v3.1.0/bundle/append {module:"bs.raycast"}
