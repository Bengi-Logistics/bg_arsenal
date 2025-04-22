// this function store items for each role and returns them

scriptName "fn_arsenal_Custom";
// file name

params ["_role"];

private _items = [];

_items append (switch (_role) do
{
    case "sectioncommander":
    {
        []
    };
    case "riflemannlaw":
    {
        []
    };
    case "riflemanat":
    {
        []
    };
    case "eod":
    {
        []
    };
	case "autorifleman":
    {
        []
    };
	case "combatmedic":
    {
        []
    };
	case "breacher":
    {
        []
    };
	
    default {
        hint "Error #100"
    };
});

_items arrayIntersect _items