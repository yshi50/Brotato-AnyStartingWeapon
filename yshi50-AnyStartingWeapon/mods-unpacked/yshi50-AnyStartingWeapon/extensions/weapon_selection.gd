extends "res://ui/menus/run/weapon_selection.gd"

func _get_unlocked_elements(player_index: int)->Array:
	var elements_unlocked = []
	var starting_weapons = ItemService.weapons

	for weapon in starting_weapons:
		elements_unlocked.push_back(weapon.my_id)
	return elements_unlocked

func _get_all_possible_elements(player_index: int)->Array:
	return ItemService.weapons