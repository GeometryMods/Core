//Some before-run configs
room_speed = 60

//Needed to run first
execute_string(get_external("Rooms/Debug.gml"))

execute_string(get_external("Code/ObjectsLoader.gml"))

//JUST FOR TESTING - DON'T TAKE THIS SERIOUS, IT'LL BE DELETED SOON
instance_create(100, 100, obj_player)
