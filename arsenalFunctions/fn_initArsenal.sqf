scriptName "fn_initArsenal";

// --- put this in any Mission init field or init.sqf --- //
this code makes each IDAP supply create ("I_supplyCrate_F") to arsenal

// this creates an interaction on the box to open the arsenal later
_actionOpenArsenal = ["openArsenal", "Open Arsenal", "", {[_target, _player, false] call ace_arsenal_fnc_openBox;}, {!isNil {_target getVariable 'ace_arsenal_virtualItems'}}] call ace_interact_menu_fnc_createAction;
["I_supplyCrate_F", 0, ["ACE_MainActions"], _actionOpenArsenal, true] call ace_interact_menu_fnc_addActionToClass;

// this creates an interaction that is an directory for all roles
_actionTakeRole = ["takeRole", "Take Role", "", {[_target] call Arsenal_System_fnc_transformArsenal;}, {true},{},[],"",4,[false, false, false, true, false]] call ace_interact_menu_fnc_createAction;
["I_supplyCrate_F", 0, ["ACE_MainActions"], _actionTakeRole, true] call ace_interact_menu_fnc_addActionToClass;


// roles interaction creation
// you can make as many as you want
_action = ["---ROLE---", "Display Name", "", {['---ROLE---', _target] call Arsenal_System_fnc_setArsenal; [_target, _player] call ace_arsenal_fnc_openBox; }, {(player getVariable ["AS_Role", "default"]) == "---ROLE---"}] call ace_interact_menu_fnc_createAction;
["I_supplyCrate_F", 0, ["ACE_MainActions","takeRole"], _action, true] call ace_interact_menu_fnc_addActionToClass;