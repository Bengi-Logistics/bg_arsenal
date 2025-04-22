scriptName "fn_initArsenal";

/* put this in any Mission init field or init.sqf
this code makes each IDAP supply create ("I_supplyCrate_F") to arsenal
*/

_actionOpenArsenal = ["openArsenal", "Open Arsenal", "", {[_target, _player, false] call ace_arsenal_fnc_openBox;}, {!isNil {_target getVariable 'ace_arsenal_virtualItems'}}] call ace_interact_menu_fnc_createAction;
["I_supplyCrate_F", 0, ["ACE_MainActions"], _actionOpenArsenal, true] call ace_interact_menu_fnc_addActionToClass;
// this creates an interaction on the box to open the arsenal later

_actionTakeRole = ["takeRole", "Take Role", "", {[_target] call Arsenal_System_fnc_transformArsenal;}, {true},{},[],"",4,[false, false, false, true, false]] call ace_interact_menu_fnc_createAction;
["I_supplyCrate_F", 0, ["ACE_MainActions"], _actionTakeRole, true] call ace_interact_menu_fnc_addActionToClass;
// this creates an interaction that is an directory for all roles

// roles interaction creation
// you can make as many as you want
// warning the screen has a limited height for the roles, when this is a problem we have a solution that is little complex and because of this I will not writte it here.

_action = ["sectioncommander", "Section Commander", "", {['sectioncommander', _target] call Arsenal_System_fnc_setArsenal; [_target, _player] call ace_arsenal_fnc_openBox; }, {(player getVariable ["AS_Role", "default"]) == "sectioncommander"}] call ace_interact_menu_fnc_createAction;
["I_supplyCrate_F", 0, ["ACE_MainActions","takeRole"], _action, true] call ace_interact_menu_fnc_addActionToClass;

_action = ["riflemannlaw", "Rifleman NLAWW", "", {['riflemannlaw', _target] call Arsenal_System_fnc_setArsenal; [_target, _player] call ace_arsenal_fnc_openBox; }, {(player getVariable ["AS_Role", "default"]) == "riflemannlaw"}] call ace_interact_menu_fnc_createAction;
["I_supplyCrate_F", 0, ["ACE_MainActions","takeRole"], _action, true] call ace_interact_menu_fnc_addActionToClass;

_action = ["riflemanat", "Rifleman (AT)", "", {['riflemanat', _target] call Arsenal_System_fnc_setArsenal; [_target, _player] call ace_arsenal_fnc_openBox; }, {(player getVariable ["AS_Role", "default"]) == "riflemanat"}] call ace_interact_menu_fnc_createAction;
["I_supplyCrate_F", 0, ["ACE_MainActions","takeRole"], _action, true] call ace_interact_menu_fnc_addActionToClass;

_action = ["eod", "EOD Specialist", "", {['eod', _target] call Arsenal_System_fnc_setArsenal; [_target, _player] call ace_arsenal_fnc_openBox; }, {(player getVariable ["AS_Role", "default"]) == "eod"}] call ace_interact_menu_fnc_createAction;
["I_supplyCrate_F", 0, ["ACE_MainActions","takeRole"], _action, true] call ace_interact_menu_fnc_addActionToClass;

_action = ["autorifleman", "Autorifleman", "", {['autorifleman', _target] call Arsenal_System_fnc_setArsenal; [_target, _player] call ace_arsenal_fnc_openBox; }, {(player getVariable ["AS_Role", "default"]) == "autorifleman"}] call ace_interact_menu_fnc_createAction;
["I_supplyCrate_F", 0, ["ACE_MainActions","takeRole"], _action, true] call ace_interact_menu_fnc_addActionToClass;

_action = ["combatmedic", "Combat Medic", "", {['combatmedic', _target] call Arsenal_System_fnc_setArsenal; [_target, _player] call ace_arsenal_fnc_openBox; }, {(player getVariable ["AS_Role", "default"]) == "combatmedic"}] call ace_interact_menu_fnc_createAction;
["I_supplyCrate_F", 0, ["ACE_MainActions","takeRole"], _action, true] call ace_interact_menu_fnc_addActionToClass;

_action = ["breacher", "Breacher", "", {['breacher', _target] call Arsenal_System_fnc_setArsenal; [_target, _player] call ace_arsenal_fnc_openBox; }, {(player getVariable ["AS_Role", "default"]) == "breacher"}] call ace_interact_menu_fnc_createAction;
["I_supplyCrate_F", 0, ["ACE_MainActions","takeRole"], _action, true] call ace_interact_menu_fnc_addActionToClass;