// This function store items for each role and returns them

// File name
scriptName "fn_arsenal_Custom";

params ["_role"];

private _items = [];

_items append (switch (_role) do
{
    // This is the role name that is used in the init name box in Arma 3
    // Item classnames go in [] and are put between "" and each item sperated by ,
    case "---ROLE---":
    {
        []
    };
	
    default {
        hint "Error #100"
    };
});

_items arrayIntersect _items