params [
	"_pos",
	["_name", "", [""]],
	["_echelon", "", [""]]
];
private [
	"_echelon_marker_type"
];

try {
	switch (toUpper _echelon) do {
		case "BN": {
			_echelon_marker_type = "group_5";
		};
		case "COY": {
			_echelon_marker_type = "group_4";
		};
		case "PL": {
			_echelon_marker_type = "group_3";
		};
		default {
			throw format ["Unknown echelon (%1)", _echelon];
		};
	};

	if (_name == "") then { _name = format ["marker_echelon_%1", _pos]; };

	_echelon_marker = createMarker [_name, _pos];
	_echelon_marker setMarkerShape "ICON";
	_echelon_marker setMarkerType _echelon_marker_type;

	_echelon_marker;
} catch {
	[_exception] call BIS_fnc_error;
};
