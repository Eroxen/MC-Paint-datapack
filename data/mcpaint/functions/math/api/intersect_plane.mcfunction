#####################################################################
# math/api/intersect_plane.mcfunction
# written by Eroxen
#
# Called at the origin of the ray intersecting a plane.
#
# Storage input :
# - mcpaint:calc :
#   - math :
#     - intersect_plane :
#       - plane :
#         - normal :
#           - axis : "x" or "z"
#           - sign : -1 or 1
#         - offset: offsets the plane to intersect with
#
# Scoreboard output :
# - mcpaint.calc :
#   - screenspace_x : x coordinate of the intersection point
#   - screenspace_y : y coordinate of the intersection point
#   - distance : shortest distance to the plane
#####################################################################

execute summon marker run function mcpaint:math/internal/intersect_plane_marker

execute store result score origin_x mcpaint.calc run data get storage mcpaint:calc math.intersect_plane.plane.origin[0] 1000
execute store result score origin_y mcpaint.calc run data get storage mcpaint:calc math.intersect_plane.plane.origin[1] 1000
execute store result score origin_z mcpaint.calc run data get storage mcpaint:calc math.intersect_plane.plane.origin[2] 1000

execute store result score l_0_x mcpaint.calc run data get storage mcpaint:calc math.intersect_plane.l0[0] 1000
execute store result score l_0_y mcpaint.calc run data get storage mcpaint:calc math.intersect_plane.l0[1] 1000
execute store result score l_0_z mcpaint.calc run data get storage mcpaint:calc math.intersect_plane.l0[2] 1000
execute store result score l_1_x mcpaint.calc run data get storage mcpaint:calc math.intersect_plane.l1[0] 1000
execute store result score l_1_y mcpaint.calc run data get storage mcpaint:calc math.intersect_plane.l1[1] 1000
execute store result score l_1_z mcpaint.calc run data get storage mcpaint:calc math.intersect_plane.l1[2] 1000
scoreboard players operation l_x mcpaint.calc = l_1_x mcpaint.calc
scoreboard players operation l_y mcpaint.calc = l_1_y mcpaint.calc
scoreboard players operation l_z mcpaint.calc = l_1_z mcpaint.calc
scoreboard players operation l_x mcpaint.calc -= l_0_x mcpaint.calc
scoreboard players operation l_y mcpaint.calc -= l_0_y mcpaint.calc
scoreboard players operation l_z mcpaint.calc -= l_0_z mcpaint.calc

scoreboard players set -1 mcpaint.calc -1
scoreboard players set precision mcpaint.calc 1000

execute store result score distance mcpaint.calc run data get storage mcpaint:calc math.intersect_plane.plane.offset 1000
execute if data storage mcpaint:calc math.intersect_plane.plane.normal{sign:-1} run scoreboard players operation distance mcpaint.calc *= -1 mcpaint.calc
execute if data storage mcpaint:calc math.intersect_plane.plane.normal{axis:"x"} run scoreboard players operation distance mcpaint.calc += origin_x mcpaint.calc
execute if data storage mcpaint:calc math.intersect_plane.plane.normal{axis:"z"} run scoreboard players operation distance mcpaint.calc += origin_z mcpaint.calc
execute if data storage mcpaint:calc math.intersect_plane.plane.normal{axis:"x"} run scoreboard players operation distance mcpaint.calc -= l_0_x mcpaint.calc
execute if data storage mcpaint:calc math.intersect_plane.plane.normal{axis:"z"} run scoreboard players operation distance mcpaint.calc -= l_0_z mcpaint.calc

scoreboard players operation v_distance mcpaint.calc = distance mcpaint.calc
execute if data storage mcpaint:calc math.intersect_plane.plane.normal{axis:"x"} run scoreboard players operation v_distance mcpaint.calc *= precision mcpaint.calc
execute if data storage mcpaint:calc math.intersect_plane.plane.normal{axis:"x"} run scoreboard players operation v_distance mcpaint.calc /= l_x mcpaint.calc
execute if data storage mcpaint:calc math.intersect_plane.plane.normal{axis:"z"} run scoreboard players operation v_distance mcpaint.calc *= precision mcpaint.calc
execute if data storage mcpaint:calc math.intersect_plane.plane.normal{axis:"z"} run scoreboard players operation v_distance mcpaint.calc /= l_z mcpaint.calc

execute if data storage mcpaint:calc math.intersect_plane.plane.normal{sign:1} run scoreboard players operation distance mcpaint.calc *= -1 mcpaint.calc

scoreboard players operation intersect_x mcpaint.calc = l_x mcpaint.calc
scoreboard players operation intersect_x mcpaint.calc *= v_distance mcpaint.calc
scoreboard players operation intersect_x mcpaint.calc /= precision mcpaint.calc
scoreboard players operation intersect_x mcpaint.calc += l_0_x mcpaint.calc
scoreboard players operation intersect_y mcpaint.calc = l_y mcpaint.calc
scoreboard players operation intersect_y mcpaint.calc *= v_distance mcpaint.calc
scoreboard players operation intersect_y mcpaint.calc /= precision mcpaint.calc
scoreboard players operation intersect_y mcpaint.calc += l_0_y mcpaint.calc
scoreboard players operation intersect_z mcpaint.calc = l_z mcpaint.calc
scoreboard players operation intersect_z mcpaint.calc *= v_distance mcpaint.calc
scoreboard players operation intersect_z mcpaint.calc /= precision mcpaint.calc
scoreboard players operation intersect_z mcpaint.calc += l_0_z mcpaint.calc

scoreboard players operation screenspace_y mcpaint.calc = intersect_y mcpaint.calc
scoreboard players operation screenspace_y mcpaint.calc -= origin_y mcpaint.calc

execute if data storage mcpaint:calc math.intersect_plane.plane.normal{axis:"x"} run scoreboard players operation screenspace_x mcpaint.calc = intersect_z mcpaint.calc
execute if data storage mcpaint:calc math.intersect_plane.plane.normal{axis:"x"} run scoreboard players operation screenspace_x mcpaint.calc -= origin_z mcpaint.calc
execute if data storage mcpaint:calc math.intersect_plane.plane.normal{axis:"x",sign:1} run scoreboard players operation screenspace_x mcpaint.calc *= -1 mcpaint.calc
execute if data storage mcpaint:calc math.intersect_plane.plane.normal{axis:"z"} run scoreboard players operation screenspace_x mcpaint.calc = intersect_x mcpaint.calc
execute if data storage mcpaint:calc math.intersect_plane.plane.normal{axis:"z"} run scoreboard players operation screenspace_x mcpaint.calc -= origin_x mcpaint.calc
execute if data storage mcpaint:calc math.intersect_plane.plane.normal{axis:"z",sign:-1} run scoreboard players operation screenspace_x mcpaint.calc *= -1 mcpaint.calc