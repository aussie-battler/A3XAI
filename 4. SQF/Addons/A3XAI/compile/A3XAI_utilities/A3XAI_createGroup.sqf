private["_unitGroup","_protect","_unitType"];
_unitType = _this select 0;

_unitGroup = createGroup east;
if ((count _this) > 1) then {_unitGroup call A3XAI_protectGroup};
_unitGroup setVariable ["unitType",_unitType];
[_unitGroup,true] call A3XAI_updGroupCount;

_unitGroup