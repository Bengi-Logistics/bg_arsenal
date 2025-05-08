// Arsenal_System_fnc_setArsenal is a function (also named script) that makes the per role arsenal

scriptName "fn_setArsenal";

params ["_role","_ammoBox"];

private _allItems = [_role] call Arsenal_System_fnc_arsenal_Custom;
// in _allItems are items stored for the player role

[_ammoBox, false] call ace_arsenal_fnc_removeBox;
// remove old Arsenal

[_ammoBox, true, false] call ace_arsenal_fnc_removeVirtualItems;
// remove old items

[_ammoBox, _allItems, false] call ace_arsenal_fnc_addVirtualItems;
// add items to the Arsenal


// sinchronise virtual items on player and sync other arsenals
private _arsenalCargo = _ammoBox getVariable "ace_arsenal_virtualItems";
ACE_player setVariable ["arsenalCargo", _arsenalCargo];

// arsenal sync
{
	if (true && {
		_arsenalCargo isNotEqualTo (_x getVariable ["ace_arsenal_virtualItems", []])
	}) then
	{
		_x setVariable ["ace_arsenal_virtualItems", _arsenalCargo];
	};
} forEach (entities (typeOf _ammoBox));

// Remove current stuff
removeAllWeapons ACE_player;
removeAllItems ACE_player;
removeAllAssignedItems ACE_player;
removeUniform ACE_player;
removeVest ACE_player;
removeBackpack ACE_player;
removeHeadgear ACE_player;