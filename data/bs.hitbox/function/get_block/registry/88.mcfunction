# ------------------------------------------------------------------------------------------------------------
# Copyright (c) 2024 Gunivers
#
# This file is part of the Bookshelf project (https://github.com/Gunivers/Bookshelf).
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

# turtle_egg group
data modify storage bs:out hitbox.shape set value [[1, 0, 1, 15, 7, 15]]
execute if block ~ ~ ~ minecraft:turtle_egg[eggs=1] run data modify storage bs:out hitbox.shape set value [[3, 0, 3, 12, 7, 12]]
