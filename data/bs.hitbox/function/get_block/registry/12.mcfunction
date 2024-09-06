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

# button group
execute if block ~ ~ ~ #bs.hitbox:shape/button[face=ceiling,facing=west,powered=false] run data modify storage bs:out hitbox.shape set value [[6, 14, 5, 10, 16, 11]]
execute if block ~ ~ ~ #bs.hitbox:shape/button[face=ceiling,facing=east,powered=false] run data modify storage bs:out hitbox.shape set value [[6, 14, 5, 10, 16, 11]]
execute if block ~ ~ ~ #bs.hitbox:shape/button[face=ceiling,facing=north,powered=false] run data modify storage bs:out hitbox.shape set value [[5, 14, 6, 11, 16, 10]]
execute if block ~ ~ ~ #bs.hitbox:shape/button[face=ceiling,facing=south,powered=false] run data modify storage bs:out hitbox.shape set value [[5, 14, 6, 11, 16, 10]]
execute if block ~ ~ ~ #bs.hitbox:shape/button[face=ceiling,facing=west,powered=true] run data modify storage bs:out hitbox.shape set value [[6, 15, 5, 10, 16, 11]]
execute if block ~ ~ ~ #bs.hitbox:shape/button[face=ceiling,facing=east,powered=true] run data modify storage bs:out hitbox.shape set value [[6, 15, 5, 10, 16, 11]]
execute if block ~ ~ ~ #bs.hitbox:shape/button[face=ceiling,facing=north,powered=true] run data modify storage bs:out hitbox.shape set value [[5, 15, 6, 11, 16, 10]]
execute if block ~ ~ ~ #bs.hitbox:shape/button[face=ceiling,facing=south,powered=true] run data modify storage bs:out hitbox.shape set value [[5, 15, 6, 11, 16, 10]]
execute if block ~ ~ ~ #bs.hitbox:shape/button[face=floor,facing=west,powered=false] run data modify storage bs:out hitbox.shape set value [[6, 0, 5, 10, 2, 11]]
execute if block ~ ~ ~ #bs.hitbox:shape/button[face=floor,facing=east,powered=false] run data modify storage bs:out hitbox.shape set value [[6, 0, 5, 10, 2, 11]]
execute if block ~ ~ ~ #bs.hitbox:shape/button[face=floor,facing=north,powered=false] run data modify storage bs:out hitbox.shape set value [[5, 0, 6, 11, 2, 10]]
execute if block ~ ~ ~ #bs.hitbox:shape/button[face=floor,facing=south,powered=false] run data modify storage bs:out hitbox.shape set value [[5, 0, 6, 11, 2, 10]]
execute if block ~ ~ ~ #bs.hitbox:shape/button[face=floor,facing=west,powered=true] run data modify storage bs:out hitbox.shape set value [[6, 0, 5, 10, 1, 11]]
execute if block ~ ~ ~ #bs.hitbox:shape/button[face=floor,facing=east,powered=true] run data modify storage bs:out hitbox.shape set value [[6, 0, 5, 10, 1, 11]]
execute if block ~ ~ ~ #bs.hitbox:shape/button[face=floor,facing=north,powered=true] run data modify storage bs:out hitbox.shape set value [[5, 0, 6, 11, 1, 10]]
execute if block ~ ~ ~ #bs.hitbox:shape/button[face=floor,facing=south,powered=true] run data modify storage bs:out hitbox.shape set value [[5, 0, 6, 11, 1, 10]]
execute if block ~ ~ ~ #bs.hitbox:shape/button[face=wall,facing=west,powered=false] run data modify storage bs:out hitbox.shape set value [[14, 6, 5, 16, 10, 11]]
execute if block ~ ~ ~ #bs.hitbox:shape/button[face=wall,facing=east,powered=false] run data modify storage bs:out hitbox.shape set value [[0, 6, 5, 2, 10, 11]]
execute if block ~ ~ ~ #bs.hitbox:shape/button[face=wall,facing=north,powered=false] run data modify storage bs:out hitbox.shape set value [[5, 6, 14, 11, 10, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/button[face=wall,facing=south,powered=false] run data modify storage bs:out hitbox.shape set value [[5, 6, 0, 11, 10, 2]]
execute if block ~ ~ ~ #bs.hitbox:shape/button[face=wall,facing=west,powered=true] run data modify storage bs:out hitbox.shape set value [[15, 6, 5, 16, 10, 11]]
execute if block ~ ~ ~ #bs.hitbox:shape/button[face=wall,facing=east,powered=true] run data modify storage bs:out hitbox.shape set value [[0, 6, 5, 1, 10, 11]]
execute if block ~ ~ ~ #bs.hitbox:shape/button[face=wall,facing=north,powered=true] run data modify storage bs:out hitbox.shape set value [[5, 6, 15, 11, 10, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/button[face=wall,facing=south,powered=true] run data modify storage bs:out hitbox.shape set value [[5, 6, 0, 11, 10, 1]]
