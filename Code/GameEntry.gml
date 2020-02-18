//Needed to run first
execute_string(get_external("Code/ObjectsLoader.gml"))

global.spdboost=1
global.pause=0
global.pulse=0
global.bgcolor=c_red
global.gcolor=merge_color(c_red,c_black,0.3)
global.yscroll=1
global.g1y=0
global.g2y=0
global.ylimit=0
global.pause=0

global.col1 = c_yellow
global.col2 = c_aqua
global.cube = 0

//This could be useful to some mods
global.playing = false


//Then we load the mods
execute_string(get_external("ModLoader.gml"))