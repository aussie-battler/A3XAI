private["_vehicle","_hit","_damage","_source","_ammo"];

_vehicle = 		_this select 0;				//Object the event handler is assigned to. (the unit taking damage)
//_hit = 			_this select 1;				//Name of the selection where the unit was damaged. "" for over-all structural damage, "?" for unknown selections. 
_damage = 		_this select 2;				//Resulting level of damage for the selection. (Received damage)
_source = 		_this select 3;				//The source unit that caused the damage. 
//_ammo = 		_this select 4;				//Classname of the projectile that caused inflicted the damage. ("" for unknown, such as falling damage.) 

if ((group _vehicle) call A3XAI_getNoAggroStatus) exitWith {0};

if !(isPlayer _source) then {
	_damage = 0;
};

_damage