// This function store items for each role and returns them

scriptName "fn_arsenal_Custom";
// File name

params ["_role"];

private _items = [];

_items append (switch (_role) do
{
    // Replace "---ROLE---" with the desrired role name
    // Put all item class names in [] in "" and sperated by ,
    case "--ROLE--":
    {
        []
    };
    
    default {
        hint "Error #100"
    };
});

_items arrayIntersect _items