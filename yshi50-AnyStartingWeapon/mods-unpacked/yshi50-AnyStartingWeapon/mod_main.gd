extends Node

const MYMODNAME_MOD_DIR = "yshi50-AnyStartingWeapon/"
const MYMODNAME_LOG = "yshi50-AnyStartingWeapon"

var mod_dir_path := ""
var extensions_dir_path := ""

func _init() -> void:
	mod_dir_path = ModLoaderMod.get_unpacked_dir().plus_file(MYMODNAME_MOD_DIR)
	extensions_dir_path = mod_dir_path.plus_file("extensions")
	ModLoaderMod.install_script_extension(extensions_dir_path.plus_file("weapon_selection.gd"))