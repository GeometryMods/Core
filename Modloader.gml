/*
 * How does the modloader work?
 * 
 * For each mod downloaded (put it in the Mods folder), you have to write a line below this comments
 * it should look way like this:
 *
 *		execute_string(get_external("Mods/mod_name/ModEntry.gml"))
 *
 */

if directory_exists("Mods/Editor") {
	execute_string(get_external("Mods/Editor/ModEntry.gml"))
}