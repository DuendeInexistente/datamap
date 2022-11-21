scoreboard objectives add facing trigger
scoreboard players enable @p facing
scoreboard objectives add facingl trigger
scoreboard players enable @p facingl
#scoreboard objectives setdisplay sidebar facing
scoreboard objectives setdisplay sidebar onground


#x+east
# -west
#y+down
# -up
#z+south
# -north
#y_rotation=1..2



##North
scoreboard players set @p[y_rotation=-179..-157.5] facing 1
scoreboard players set @p[y_rotation= 157.5..180] facing 1
##Northeast
scoreboard players set @p[y_rotation=-157.5..-112.5] facing 2
##East
scoreboard players set @p[y_rotation=-112.5..-67.5] facing 3
##Southeast
scoreboard players set @p[y_rotation=-67.5..-22.5] facing 4
##South
scoreboard players set @p[y_rotation=-22.5..22.5] facing 5
##Southwest
scoreboard players set @p[y_rotation=22.5..67.5] facing 6
##West
scoreboard players set @p[y_rotation=67.5..112.5] facing 7
##Northwest
scoreboard players set @p[y_rotation=112.5..179] facing 8

##Lines
##North-South
scoreboard players set @p[scores={facing=1}] facingl 1
scoreboard players set @p[scores={facing=5}] facingl 1

##West-east
scoreboard players set @p[scores={facing=7}] facingl 2
scoreboard players set @p[scores={facing=3}] facingl 2

##Northeast-Southwest
scoreboard players set @p[scores={facing=2}] facingl 3
scoreboard players set @p[scores={facing=6}] facingl 3

##Northwest-Southeast
scoreboard players set @p[scores={facing=4}] facingl 4
scoreboard players set @p[scores={facing=8}] facingl 4