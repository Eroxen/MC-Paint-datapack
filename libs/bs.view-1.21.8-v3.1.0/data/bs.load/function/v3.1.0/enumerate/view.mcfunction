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

# Add the version of the module to the list of available modules
data modify storage bs:data load.modules append value {module:"bs.view",version:"3.1.0",enabled:0b}
scoreboard players add $bs.view.major load.status 0
scoreboard players add $bs.view.minor load.status 0
scoreboard players add $bs.view.patch load.status 0

# Count the number of major versions
execute unless score $bs.view.major load.status matches 3 run scoreboard players add #bs.view.major_versions load.status 1

# Set the latest available version for the module
execute unless score $bs.view.major load.status matches ..3 run return 0
execute if score $bs.view.major load.status matches 3 unless score $bs.view.minor load.status matches ..1 run return 0
execute if score $bs.view.major load.status matches 3 if score $bs.view.minor load.status matches 1 unless score $bs.view.patch load.status matches ..0 run return 0
scoreboard players set $bs.view.major load.status 3
scoreboard players set $bs.view.minor load.status 1
scoreboard players set $bs.view.patch load.status 0
