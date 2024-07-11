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

# rod group
execute if block ~ ~ ~ #bs.hitbox:shape/rod[facing=west] run data modify storage bs:out hitbox.shape set value [[0, 6, 6, 16, 10, 10]]
execute if block ~ ~ ~ #bs.hitbox:shape/rod[facing=east] run data modify storage bs:out hitbox.shape set value [[0, 6, 6, 16, 10, 10]]
execute if block ~ ~ ~ #bs.hitbox:shape/rod[facing=north] run data modify storage bs:out hitbox.shape set value [[6, 6, 0, 10, 10, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/rod[facing=south] run data modify storage bs:out hitbox.shape set value [[6, 6, 0, 10, 10, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/rod[facing=up] run data modify storage bs:out hitbox.shape set value [[6, 0, 6, 10, 16, 10]]
execute if block ~ ~ ~ #bs.hitbox:shape/rod[facing=down] run data modify storage bs:out hitbox.shape set value [[6, 0, 6, 10, 16, 10]]
