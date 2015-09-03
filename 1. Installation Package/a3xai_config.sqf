/*
	A3XAI Configuration File
	
	Description: Contains all configurable settings of A3XAI. Contains settings for debugging, customization of AI units, spawning, and loot.
	

*/

diag_log "[A3XAI] Reading A3XAI configuration file.";

/*	A3XAI Settings
--------------------------------------------------------------------------------------------------------------------*/	

//Enable or disable event logging to the server RPT file (named arma3server_[date]_[time].rpt). Debug level setting. 0: No debug output, 1: Basic Debug output, 2: Detailed Debug output. (Default: 0)
//Debug output may help finding additional information about A3XAI's background behavior. This output is helpful when asking for help regarding bugs or unexpected behaviors.
A3XAI_debugLevel = 0;

//Frequency of server monitor update to RPT log in seconds. The monitor periodically reports number of max/current AI units and dynamically spawned triggers into RPT log. (Default: 300, 0 = Disable reporting)										
A3XAI_monitorRate = 300;

//Enable or disable verification and error-correction of classname tables used by A3XAI. If invalid entries are found, they are removed and logged into the RPT log.
//If disabled, any invalid classnames will not be removed and clients may crash if AI bodies with invalid items are looted. Only disable if a previous scan shows no invalid classnames (Default: true).										
A3XAI_verifyClassnames = true;

//Enables checking of all A3XAI config settings. (Default: true)
A3XAI_verifySettings = true;

//Minimum seconds to pass until each dead AI body or destroyed vehicle can be cleaned up by A3XAI's task scheduler. A3XAI will not clean up a body/vehicle if there is a player close by (Default: 900).									
A3XAI_cleanupDelay = 900;									

//Enabled: A3XAI will load custom spawn/blacklist definitions file on startup (A3XAI_custom_defs.sqf) (Default: false)
A3XAI_loadCustomFile = false;


/*	A3XAI HC Settings
--------------------------------------------------------------------------------------------------------------------*/	

//Enables A3XAI headless client support. (Default: false)
A3XAI_enableHC = false;

//If HC support enabled, A3XAI will pause during post-initialization until HC has successfully connected. (Default: false)
A3XAI_waitForHC = false;


/*	Dynamic Classname Settings

	If a setting is disabled, A3XAI will use the corresponding classname table further below. See "AI skin, weapon, loot, and equipment settings" section.
--------------------------------------------------------------------------------------------------------------------*/	

//true: Generate AI weapons from Exile trader tables (Default)
//false: Weapons defined by A3XAI_pistolList, A3XAI_rifleList, A3XAI_machinegunList, A3XAI_sniperList
A3XAI_dynamicWeaponList = true;

//true: Use Exile loot table data as whitelist for AI-usable weapon scopes (Default)
//false: Scopes defined by A3XAI_weaponOpticsList
A3XAI_dynamicOpticsList = true;

//true: Generate AI uniform types from Exile trader tables (Default)
//false: Uniforms defined by A3XAI_uniformTypes0, A3XAI_uniformTypes1, A3XAI_uniformTypes2, A3XAI_uniformTypes3
//A3XAI_dynamicUniformLevels: List of unit levels affected by dynamic classname function
A3XAI_dynamicUniformList = true;
A3XAI_dynamicUniformLevels = [0,1,2,3];

//true: Generate AI backpack types from Exile trader tables (Default)
//false: Backpacks defined by A3XAI_backpackTypes0, A3XAI_backpackTypes1, A3XAI_backpackTypes2, A3XAI_backpackTypes3
//A3XAI_dynamicBackpackLevels: List of unit levels affected by dynamic classname function
A3XAI_dynamicBackpackList = true;
A3XAI_dynamicBackpackLevels = [0,1,2,3];

//true: Generate AI backpack types from Exile trader tables (Default)
//false: Vests defined by A3XAI_vestTypes0, A3XAI_vestTypes1, A3XAI_vestTypes2, A3XAI_vestTypes3
//A3XAI_dynamicVestLevels: List of unit levels affected by dynamic classname function
A3XAI_dynamicVestList = true;
A3XAI_dynamicVestLevels = [0,1,2,3];

//true: Generate AI headgear types from Exile trader tables (Default)
//false: Headgear defined by A3XAI_headgearTypes0, A3XAI_headgearTypes1, A3XAI_headgearTypes2, A3XAI_headgearTypes3
//A3XAI_dynamicHeadgearLevels: List of unit levels affected by dynamic classname function
A3XAI_dynamicHeadgearList = true;
A3XAI_dynamicHeadgearLevels = [0,1,2,3];

//true: Generate AI food types from Exile trader tables (Default)
//false: Food defined by A3XAI_foodLoot
A3XAI_dynamicFoodList = true;

//true: Generate AI generic loot types from Exile trader tables. Includes Hardware, Ammunition, and First Aid items (Default)
//false: Loot defined by A3XAI_MiscLoot1
A3XAI_dynamicLootList = true;

//Classnames of weapons to ignore from Exile trader tables
A3XAI_dynamicWeaponBlacklist = [];


/*	Shared AI Unit Settings. These settings affect all AI spawned unless noted otherwise.
--------------------------------------------------------------------------------------------------------------------*/	

//Number of online players required for maximum (or minimum) AI spawn chance. Affects Static, Dynamic, Random AI spawns. (Default: 20)	
A3XAI_playerCountThreshold = 10;

//true: Spawn chance multiplier scales upwards from value defined by A3XAI_chanceScalingThreshold to 1.00. false: Spawn chance multiplier scales downwards from 1.00 to A3XAI_chanceScalingThreshold.
A3XAI_upwardsChanceScaling = true;

//If A3XAI_upwardsChanceScaling is true: Initial spawn chance multiplier. If A3XAI_upwardsChanceScaling is false: Final spawn chance multiplier. (Default: 0.50)
A3XAI_chanceScalingThreshold = 0.50;

//(Static/Dynamic/Random Spawns) minAI: Minimum number of units. addAI: maximum number of additional units. unitLevel: Unit level (0-3)
A3XAI_minAI_village = 1; //1
A3XAI_addAI_village = 1; //1
A3XAI_unitLevel_village = 0; //0
A3XAI_spawnChance_village = 0.40; //0.40

//(Static/Dynamic/Random Spawns) minAI: Minimum number of units. addAI: maximum number of additional units. unitLevel: Unit level (0-3)
A3XAI_minAI_city = 1; //1
A3XAI_addAI_city = 2; //2
A3XAI_unitLevel_city = 1; //1
A3XAI_spawnChance_city = 0.60; //0.60

//(Static/Dynamic/Random Spawns) minAI: Minimum number of units. addAI: maximum number of additional units. unitLevel: Unit level (0-3)
A3XAI_minAI_capitalCity = 2; //2
A3XAI_addAI_capitalCity = 1; //1
A3XAI_unitLevel_capitalCity = 1; //1
A3XAI_spawnChance_capitalCity = 0.70; //0.70

//(Static/Dynamic/Random Spawns) minAI: Minimum number of units. addAI: maximum number of additional units. unitLevel: Unit level (0-3)
A3XAI_minAI_remoteArea = 1; //1
A3XAI_addAI_remoteArea = 1; //1
A3XAI_unitLevel_remoteArea = 2; //2
A3XAI_spawnChance_remoteArea = 0.80; //0.80

//(Dynamic/Random Spawns) minAI: Minimum number of units. addAI: maximum number of additional units. unitLevel: Unit level (0-3)
A3XAI_minAI_wilderness = 1; //1
A3XAI_addAI_wilderness = 2; //2
A3XAI_unitLevel_wilderness = 1; //1
A3XAI_spawnChance_wilderness = 0.50; //0.50

//(For dynamic and random spawns only) Defines amount of time to wait in seconds until cleaning up temporary blacklist area after dynamic/random spawn is deactivated (Default: 1200)
A3XAI_tempBlacklistTime = 1200;

//If enabled, AI group will attempt to track down player responsible for killing a group member. (Default: true)
A3XAI_findKiller = true;	

//If normal probability check for spawning NVGs fails, then give AI temporary NVGs during night hours. Temporary NVGs are unlootable and will be removed at death (Default: false).									
A3XAI_tempNVGs = false;	

//Minimum AI unit level requirement to use underslung grenade launchers. Set to -1 to disable completely. (Default: 1)
A3XAI_GLRequirement = 1;	

//Minimum AI unit level requirement to use launcher weapons. Set to -1 to disable completely. (Default: -1)
A3XAI_launcherLevelReq = -1;	

//List of launcher-type weapons that AI can use.
A3XAI_launcherTypes = ["launch_NLAW_F","launch_RPG32_F","launch_B_Titan_F","launch_I_Titan_F","launch_O_Titan_F","launch_B_Titan_short_F","launch_I_Titan_short_F","launch_O_Titan_short_F"];	

//Maximum number of launcher weapons allowed per group (Default: 1)
A3XAI_launchersPerGroup = 1;

//Enable or disable AI self-healing. Level 0 AI cannot self-heal. (Default: true).
//Affects: All AI infantry units
A3XAI_enableHealing = true;

//If enabled, A3XAI will remove all explosive ammo (missiles, rockets, bombs - but not HE rounds) from spawned AI air vehicles.  (Default: true)
//Affects: All AI air vehicle types (patrols/custom/reinforcement). Does not affect UAV/UGVs.
A3XAI_removeExplosiveAmmo = true;

//If enabled, AI killed by vehicle collisions will have their gear removed (Default: true)
A3XAI_roadKillPenalty = true;


/*	A3XAI Client Addon features. These features require the A3XAI client addon to be installed in order to work.
--------------------------------------------------------------------------------------------------------------------*/	

//Enable or disable radio message receiving. Players with radios will be able to intercept some AI communications. (Default: false)
A3XAI_radioMsgs = false;

//Enable or disable AI death messages. Messages will be sent only to player responsible for killing the unit. Messages will be sent in System chat in the format "(Unit name) was killed." (Default: false)
A3XAI_deathMessages = false;	


/*	Static Infantry AI Spawning Settings

	A3XAI will spawn an AI group at various named locations on the map if players are nearby. 
--------------------------------------------------------------------------------------------------------------------*/	

//Enable or disable static AI spawns. If enabled, AI spawn points will be generated in cities, towns, and other named areas.
//Enabled: A3XAI automatically generates static spawns at named locations on map. Disabled: No static spawns will be generated. (Default: true)
A3XAI_enableStaticSpawns = true;

//Set minimum and maximum wait time in seconds to respawn an AI group after all units have been killed. Applies to both static AI and custom spawned AI (Default: Min 300, Max 600).									
A3XAI_respawnTimeMin = 300;
A3XAI_respawnTimeMax = 600;

//Time to allow spawned AI units to exist in seconds before being despawned when no players are present in a trigger area. Applies to both static AI and custom spawned AI (Default: 120)										
A3XAI_despawnWait = 120;										

//Respawn Limits. Set to -1 for unlimited respawns. (Default: -1 for each).
A3XAI_respawnLimit_village = -1;
A3XAI_respawnLimit_city = -1;
A3XAI_respawnLimit_capitalCity = -1;
A3XAI_respawnLimit_remoteArea = -1;

//Add name of location as displayed on map prevent static AI spawns from being created in these locations. Location names are case-sensitive (Example: ["Aggelochori","Panochori","Zaros"])
A3XAI_staticBlacklistLocations = [];


/*	Dynamic Infantry AI Spawning Settings. Probabilities should add up to 1.00	

	A3XAI will create ambient threat in the area for each player by periodically spawning AI to create unexpected ambush encounters. These AI may occasionally seek out and hunt a player. 
--------------------------------------------------------------------------------------------------------------------*/		

//Upper limit of dynamic spawns on map at once. Set to 0 to disable dynamic spawns (Default: 15)
A3XAI_dynMaxSpawns = 15;

//Minimum time (in seconds) that must pass between dynamic spawns for each player (Default: 900)
A3XAI_dynCooldownTime = 900;

//Players offline for this amount of time (seconds) will have their last spawn timestamp reset (Default: 3600)
A3XAI_dynResetLastSpawn = 3600;

//Probability for dynamic AI to actively hunt a targeted player. If probability check fails, dynamic AI will patrol the area instead of hunting (Default: 0.60)
A3XAI_huntingChance = 0.60;

//Time to wait before despawning all AI units in dynamic spawn area when no players are present. (Default: 120)
A3XAI_dynDespawnWait = 120;


/*	Random Infantry AI Spawning Settings

	A3XAI will create spawns that are randomly placed around the map and are periodically relocated. These spawns are preferentially created in named locations, but may be also created anywhere in the world. 
--------------------------------------------------------------------------------------------------------------------*/		

//Maximum number of placed random spawns on map. Set to -1 for A3XAI to automatically adjust spawn limit according to map size. Set to 0 to disable random spawns. (Default: -1)
A3XAI_maxRandomSpawns = -1;

//Time to wait before despawning all AI units in random spawn area when no players are present. (Default: 120)
A3XAI_randDespawnWait = 120;

//Minimum distance between a random spawn location and other random spawns. (Default: 0)
A3XAI_minRandSpawnDist = 0;


/*	AI Air Vehicle patrol settings. 

	IMPORTANT: UAVs (Unmanned aerial vehicles) are not supported by this function. UAV spawns can be configured in the "UAV Patrol Settings" section further below.

	A3XAI will create AI vehicle patrols that will randomly travel between different cities and towns, and engage any players encountered.
	Helicopters with available cargo space may also occasionally deploy an AI group by parachute. 
--------------------------------------------------------------------------------------------------------------------*/		

//Global maximum number of active AI air vehicle patrols. Set at 0 to disable (Default: 0).							
A3XAI_maxHeliPatrols = 0;	

//Probability of spawning Level 0/1/2/3 AI air vehicle patrol spawns. Probabilities should add up to 1.00		
A3XAI_levelChancesAir = [0.00,0.50,0.35,0.15];	

//Set minimum and maximum wait time in seconds to respawn an AI vehicle patrol after vehicle is destroyed or disabled. (Default: Min 600, Max 900).
A3XAI_respawnAirMinTime = 600;
A3XAI_respawnAirMaxTime = 900;

//Classnames of air vehicle types to use, with the maximum amount of each type to spawn.
A3XAI_heliList = [
	["B_Heli_Light_01_armed_F",5],
	["B_Heli_Transport_01_F",5],
	["B_Heli_Transport_03_F",2]
];

//Maximum number of gunner units per air vehicle. Limited by actual number of available gunner positions. (Default: 2)
//Affects: All AI air vehicle patrols, including custom and reinforcement.
A3XAI_heliGunnerUnits = 2;

//Probability of AI helicopter sucessfully detecting player if there is line-of-sight. AI helicopters will conduct a visual sweep upon arriving at each waypoint and some distance after leaving. (Default: 0.80)
//Affects: All AI air vehicle patrols, including custom and reinforcement.
A3XAI_airDetectChance = 0.80;

//Probability of AI to deploy infantry units by parachute if players are nearby when helicopter is investigating a waypoint. (Default: 0.50)
//Affects: Air vehicle patrols.
A3XAI_paraDropChance = 0.50;

//Cooldown time for AI paradrop deployment in seconds. (Default: 1800).
//Affects: Air vehicle patrols.
A3XAI_paraDropCooldown = 1800;

//Number of infantry AI to paradrop if players are nearby when helicopter is investigating a waypoint, or if helicopter is reinforcing a dynamic AI spawn. Limited by number of cargo seats available in the vehicle. (Default: 3)
//Affects: Air vehicle patrols, air reinforcements.
A3XAI_paraDropAmount = 3;


/*	AI Land Vehicle patrol settings. These AI vehicles will randomly travel between different cities and towns.

	IMPORTANT: UGVs (Unmanned ground vehicles) are not supported by this function. UGV spawns can be configured in the "UGV Patrol Settings" section further below.
	
	A3XAI will create AI vehicle patrols that will randomly travel between different cities and towns, and engage any players encountered.
--------------------------------------------------------------------------------------------------------------------*/	

//Global maximum number of active AI land vehicle patrols. Set at 0 to disable (Default: 0).	
A3XAI_maxLandPatrols = 0;

//Probability of spawning Level 0/1/2/3 AI land vehicle spawns. Probabilities should add up to 1.00		
A3XAI_levelChancesLand = [0.00,0.50,0.35,0.15];	

//Set minimum and maximum wait time in seconds to respawn an AI vehicle patrol after vehicle is destroyed or disabled. (Default: Min 600, Max 900).
A3XAI_respawnLandMinTime = 600;
A3XAI_respawnLandMaxTime = 900;

//Classnames of land vehicle types to use, with the maximum amount of each type to spawn.
A3XAI_vehList = [
	["Exile_Car_Hatchback_Rusty1",5],
	["Exile_Car_Hatchback_Rusty2",5],
	["Exile_Car_Hatchback_Rusty3",5],
	["Exile_Car_Hatchback_Sport_Red",5],
	["Exile_Car_SUV_Red",5],
	["Exile_Car_Offroad_Rusty1",5],
	["Exile_Car_Offroad_Rusty2",5],
	["Exile_Car_Offroad_Rusty3",5],
    ["Exile_Car_Offroad_Repair_Civillian",5],
    ["Exile_Car_Offroad_Armed_Guerilla01",5],
    ["Exile_Car_Strider",5],
    ["Exile_Car_Hunter",5],
    ["Exile_Car_Ifrit",5],
    ["Exile_Car_Van_Black",5],
    ["Exile_Car_Van_Box_Black",5],
	["Exile_Car_Van_Fuel_Black",5],
    ["Exile_Car_Zamak",5],
    ["Exile_Car_Tempest",5],
	["Exile_Car_HEMMT",5]
];

//Maximum number of gunner units per land vehicle. Limited by actual number of available gunner positions. (Default: 2)
A3XAI_vehGunnerUnits = 2;

//Maximum number of cargo units per land vehicle. Limited by actual number of available cargo positions. (Default: 3)
A3XAI_vehCargoUnits = 3;


/*	AI Air Reinforcement Settings

	Allowed types of AI groups (defined by A3XAI_airReinforcementAllowedTypes) may call for temporary air reinforcements if a player kills one of their units.
	Probability to summon reinforcements determined by A3XAI_airReinforcementSpawnChance<AI level>, where <AI level> is the level of the calling group.
	Once summoned, armed reinforcement vehicles will remain in the area for a duration determined by A3XAI_airReinforcementDuration<AI level> and engage nearby players.
	Unarmed reinforcement vehicles will deploy a paradrop group and exit the area.
	
--------------------------------------------------------------------------------------------------------------------*/

//Maximum allowed number of simultaneous active reinforcements (Default: 5)
A3XAI_maxAirReinforcements = 5;

//Air vehicles to use as reinforcement vehicles. Default: ["B_Heli_Transport_01_F","B_Heli_Light_01_armed_F"]
//Armed air vehicles will detect and engage players within reinforcement area. Unarmed air vehicles will deploy an AI paradrop group.
A3XAI_airReinforcementVehicles = [
	"B_Heli_Transport_01_F",
	"B_Heli_Light_01_armed_F"
]; 

//Probability to spawn reinforcements for each AI level.
A3XAI_airReinforcementSpawnChance0 = 0.00; //Probability of reinforcing Level 0 AI (Default: 0.00)
A3XAI_airReinforcementSpawnChance1 = 0.10; //Probability of reinforcing Level 1 AI (Default: 0.10)
A3XAI_airReinforcementSpawnChance2 = 0.20; //Probability of reinforcing Level 2 AI (Default: 0.20)
A3XAI_airReinforcementSpawnChance3 = 0.30; //Probability of reinforcing Level 3 AI (Default: 0.30)

//AI types permitted to summon reinforcements. Default: ["static","dynamic","random"]
//Usable AI types: "static", "dynamic", "random", "air", "land", "staticcustom", "aircustom", "landcustom", "vehiclecrew"
A3XAI_airReinforcementAllowedTypes = ["static","dynamic","random"];

//Maximum time for reinforcement for armed air vehicles in seconds. AI air vehicle will leave the area after this time if not destroyed.
A3XAI_airReinforcementDuration0 = 120; //Level 0 Default: 120
A3XAI_airReinforcementDuration1 = 180; //Level 1 Default: 180
A3XAI_airReinforcementDuration2 = 240; //Level 2 Default: 240
A3XAI_airReinforcementDuration3 = 300; //Level 3 Default: 300


/*	UAV Patrol Settings

	IMPORTANT: UAV patrols are a feature in testing, and may undergo significant changes or possible removal in future versions.

	A3XAI can spawn UAVs that patrol between named locations, and deploy air reinforcements if players are found.
	In order for air reinforcements to be deployed, A3XAI_maxAirReinforcements must be greater than zero and the current limit of air reinforcements has not been exceeded.
--------------------------------------------------------------------------------------------------------------------*/

//Global maximum number of active UAV patrols. Set at 0 to disable (Default: 0).	
A3XAI_maxUAVPatrols = 0;

//Classnames of UAV types to use, with the maximum amount of each type to spawn.
A3XAI_UAVList = [
	["I_UAV_02_CAS_F",5],
	["I_UAV_02_F",5],
	["B_UAV_02_CAS_F",5],
	["B_UAV_02_F",5],
	["O_UAV_02_CAS_F",5],
	["O_UAV_02_F",5]
];

//Probability of spawning Level 0/1/2/3 UAV spawns. Probabilities should add up to 1.00	
A3XAI_levelChancesUAV = [0.35,0.50,0.15,0.00];	

//Set minimum and maximum wait time in seconds to respawn a UAV after vehicle is destroyed or disabled. (Default: Min 600, Max 900).
A3XAI_respawnUAVMinTime = 600;
A3XAI_respawnUAVMaxTime = 900;

//Set to 'true' to set detection-only behavior (UAV will not directly engage enemies). (Default: false)
A3XAI_UAVDetectOnly = false;

//Cooldown required in between air reinforcement summons when detecting players. Value in seconds. (Default: 1800)
A3XAI_UAVCallReinforceCooldown = 1800;

//Probability to successfully detect player if there is line-of-sight. If at least one player is detected, air reinforcements will be summoned to the area. (Default: 0.50)
A3XAI_UAVDetectChance = 0.50;


/*	UGV Patrol Settings

	IMPORTANT: UGV patrols are a feature in testing, and may undergo significant changes or possible removal in future versions.

	A3XAI can spawn UGVs that patrol between named locations, and deploy air reinforcements if players are found. Damaged UGVs repair themselves over time if not engaging enemes.
	In order for air reinforcements to be deployed, A3XAI_maxAirReinforcements must be greater than zero and the current limit of air reinforcements has not been exceeded.
--------------------------------------------------------------------------------------------------------------------*/

//Global maximum number of active UGV patrols. Set at 0 to disable (Default: 0).	
A3XAI_maxUGVPatrols = 0;

//Classnames of UGV types to use, with the maximum amount of each type to spawn.
A3XAI_UGVList = [
	["I_UGV_01_rcws_F",5],
	["B_UGV_01_rcws_F",5],
	["O_UGV_01_rcws_F",5]
];

//Probability of spawning Level 0/1/2/3 AI UGV spawns. Probabilities should add up to 1.00	
A3XAI_levelChancesUGV = [0.35,0.50,0.15,0.00];	

//Set minimum and maximum wait time in seconds to respawn a UGV patrol after vehicle is destroyed or disabled. (Default: Min 600, Max 900).
A3XAI_respawnUGVMinTime = 600;
A3XAI_respawnUGVMaxTime = 900;

//Set to 'true' to set detection-only behavior (UGV will not directly engage enemies). (Default: false)
A3XAI_UGVDetectOnly = false;

//Cooldown required in between air reinforcement summons when detecting players. Value in seconds. (Default: 1800)
A3XAI_UGVCallReinforceCooldown = 1800;

//Probability to successfully detect player if there is line-of-sight. If at least one player is detected, air reinforcements will be summoned to the area. (Default: 0.50)
A3XAI_UGVDetectChance = 0.50;


/*	Shared AI Vehicle Settings

	These settings affect the following AI vehicle patrol types: Air, Land, UAV, UGV
--------------------------------------------------------------------------------------------------------------------*/

//Add name of location as displayed on map prevent AI vehicle patrols from travelling to these locations. Location names are case-sensitive. (Example: ["Aggelochori","Panochori","Zaros"])
//Note: Vehicles may still pass through these areas, but will become non-hostile towards players until they travel 600m away from the area.
A3XAI_waypointBlacklistAir = []; //Affects Air vehicles (including UAVs)
A3XAI_waypointBlacklistLand = [];  //Affects Air vehicles (including UGVs)


/*
	AI skill settings. 
	
	These settings affect all AI units spawned by A3XAI.
	
	Skill Level: Description
	0: Low-level AI found in villages
	1: Medium-level AI found in cities and capital cities
	2: High-level AI found in remote areas such as factories and military bases
	3: Expert-level AI.
	
	Valid skill range: 0.00 - 1.00.
	Hint: For all skill types, higher number = better skill. For skill sub-type explanation, see: https://community.bistudio.com/wiki/AI_Sub-skills
*/

//AI skill settings level 0 (Skill, Minimum skill, Maximum skill). Defaults: Accuracy 0.05-0.10, Others 0.30-0.50
A3XAI_skill0 = [	
	["aimingAccuracy",0.05,0.10],
	["aimingShake",0.30,0.50],
	["aimingSpeed",0.30,0.50],
	["spotDistance",0.30,0.50],
	["spotTime",0.30,0.50],
	["courage",0.30,0.50],
	["reloadSpeed",0.30,0.50],
	["commanding",0.30,0.50],
	["general",0.30,0.50]
];

//AI skill settings level 1 (Skill, Minimum skill, Maximum skill). Defaults: Accuracy 0.10-0.15, Others 0.40-0.60
A3XAI_skill1 = [	
	["aimingAccuracy",0.10,0.15],
	["aimingShake",0.40,0.60],
	["aimingSpeed",0.40,0.60],
	["spotDistance",0.40,0.60],
	["spotTime",0.40,0.60],
	["courage",0.40,0.60],
	["reloadSpeed",0.40,0.60],
	["commanding",0.40,0.60],
	["general",0.40,0.60]
];

//AI skill settings level 2 (Skill, Minimum skill, Maximum skill). Defaults: Accuracy 0.15-0.20, Others 0.50-0.70
A3XAI_skill2 = [	
	["aimingAccuracy",0.15,0.20],
	["aimingShake",0.50,0.70],
	["aimingSpeed",0.50,0.70],
	["spotDistance",0.50,0.70],
	["spotTime",0.50,0.70],
	["courage",0.50,0.70],
	["reloadSpeed",0.50,0.70],
	["commanding",0.50,0.70],
	["general",0.50,0.70]
];

//AI skill settings level 3 (Skill, Minimum skill, Maximum skill). Defaults: Accuracy 0.20-0.25, Others 0.60-0.80
A3XAI_skill3 = [	
	["aimingAccuracy",0.20,0.25],
	["aimingShake",0.60,0.80],
	["aimingSpeed",0.60,0.80],
	["spotDistance",0.60,0.80],
	["spotTime",0.60,0.80],
	["courage",0.60,0.80],
	["reloadSpeed",0.60,0.80],
	["commanding",0.60,0.80],
	["general",0.60,0.80]
];


/*	AI loadout probability settings.
--------------------------------------------------------------------------------------------------------------------*/

//Probabilities to equip uniform d other than default, according to AI level.
A3XAI_addUniformChance0 = 0.60;
A3XAI_addUniformChance1 = 0.70;
A3XAI_addUniformChance2 = 0.80;
A3XAI_addUniformChance3 = 0.90;

//Probabilities to equip backpack, according to AI level.
A3XAI_addBackpackChance0 = 0.60;
A3XAI_addBackpackChance1 = 0.70;
A3XAI_addBackpackChance2 = 0.80;
A3XAI_addBackpackChance3 = 0.90;

//Probabilities to equip vest other than default, according to AI level.
A3XAI_addVestChance0 = 0.60;
A3XAI_addVestChance1 = 0.70;
A3XAI_addVestChance2 = 0.80;
A3XAI_addVestChance3 = 0.90;

//Probabilities to equip headgear, according to AI level.
A3XAI_addHeadgearChance0 = 0.60;
A3XAI_addHeadgearChance1 = 0.70;
A3XAI_addHeadgearChance2 = 0.80;
A3XAI_addHeadgearChance3 = 0.90;

//Probabilities to equip level 0-3 AI with each weapon type. Order: [pistols, rifles, machineguns, sniper rifles]. Probabilities must add up to 1.00.
A3XAI_useWeaponChance0 = [0.20,0.80,0.00,0.00];
A3XAI_useWeaponChance1 = [0.00,0.90,0.05,0.05];
A3XAI_useWeaponChance2 = [0.00,0.80,0.10,0.10];
A3XAI_useWeaponChance3 = [0.00,0.70,0.15,0.15];

//Probability to select a random optics attachment (ie: scopes) for level 0-3 AI
A3XAI_opticsChance0 = 0.00;
A3XAI_opticsChance1 = 0.30;
A3XAI_opticsChance2 = 0.60;
A3XAI_opticsChance3 = 0.90;

//Probability to select a random pointer attachment (ie: flashlights) for level 0-3 AI
A3XAI_pointerChance0 = 0.00;
A3XAI_pointerChance1 = 0.30;
A3XAI_pointerChance2 = 0.60;
A3XAI_pointerChance3 = 0.90;

//Probability to select a random muzzle attachment (ie: suppressors) for level 0-3 AI
A3XAI_muzzleChance0 = 0.00;
A3XAI_muzzleChance1 = 0.30;
A3XAI_muzzleChance2 = 0.60;
A3XAI_muzzleChance3 = 0.90;

//Probability to select a random underbarrel attachment (ie: bipods) for level 0-3 AI
A3XAI_underbarrelChance0 = 0.00;
A3XAI_underbarrelChance1 = 0.30;
A3XAI_underbarrelChance2 = 0.60;
A3XAI_underbarrelChance3 = 0.90;


/*	AI loot quantity settings
--------------------------------------------------------------------------------------------------------------------*/

//Maximum number of food loot items found on AI. (Default: 1)								
A3XAI_foodLootCount = 2;

//Maximum number of items to select from A3XAI_MiscLoot (generic loot) table. (Default: 1)											
A3XAI_miscLootCount = 2;						


/*	AI loot probability settings. AI loot is pre-generated into a pool for each unit and randomly pulled to units as time passes.
--------------------------------------------------------------------------------------------------------------------*/

//Chance to add a single InstaDoc to group loot pool per unit (Default: 0.25)
A3XAI_chanceFirstAidKit = 0.25;

//Chance to add each edible item to group loot pool per unit (Default: 0.40)								
A3XAI_chanceFoodLoot = 0.40;

//Chance to add each generic loot item to group loot pool per unit (Default: 0.40)									
A3XAI_chanceMiscLoot = 0.40;

//Probability to successfully pull a random item from loot pool for level 0-3 AI. Influences the rate at which loot items are added to units.
A3XAI_lootPullChance0 = 0.20; //Default for level 0 AI: 0.20
A3XAI_lootPullChance1 = 0.40; //Default for level 1 AI: 0.40
A3XAI_lootPullChance2 = 0.60; //Default for level 2 AI: 0.60
A3XAI_lootPullChance3 = 0.80; //Default for level 3 AI: 0.80


/*	Respect rewards for AI kills. Note: This section only has effects if A3XAI_enableRespectRewards is enabled.
--------------------------------------------------------------------------------------------------------------------*/

//Enable Exile-style handling (ie: Respect rewards, kill-count tracking) for AI kills (Default: true)
A3XAI_enableRespectRewards = true;

//Respect bonus for kills with Axe
A3XAI_respect_humiliationBonus = 300;

//Respect bonus for standard kills
A3XAI_respect_fraggedBonus = 100;

//Respect bonus for kills by vehicle driver
A3XAI_respect_roadkillBonus = 500;

//Respect bonus for kills by vehicle passenger
A3XAI_respect_madpassengerBonus = 400;

//Respect bonus per kill streak
A3XAI_respect_killstreakBonus = 50;

//Respect bonus per 100m distance from target
A3XAI_respect_per100mBonus = 10;


/*
	AI skin, weapon, loot, and equipment settings

	Note: Some of the below tables may not be used by A3XAI if a dynamic classname setting is enabled. Check each section below for details.
*/


//AI uniform classnames. Note: A3XAI_uniformTypes0-3 will not be read if A3XAI_dynamicUniformList is enabled.
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
A3XAI_uniformTypes0 = ["U_C_Journalist","U_C_Poloshirt_blue","U_C_Poloshirt_burgundy","U_C_Poloshirt_salmon","U_C_Poloshirt_stripped","U_C_Poloshirt_tricolour","U_C_Poor_1","U_C_Poor_2","U_C_Poor_shorts_1","U_C_Scientist","U_OrestesBody","U_Rangemaster","U_NikosAgedBody","U_NikosBody","U_Competitor","U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam_vest","U_B_CombatUniform_mcam_worn","U_B_CTRG_1","U_B_CTRG_2","U_B_CTRG_3","U_I_CombatUniform","U_I_CombatUniform_shortsleeve","U_I_CombatUniform_tshirt","U_I_OfficerUniform","U_O_CombatUniform_ocamo","U_O_CombatUniform_oucamo","U_O_OfficerUniform_ocamo","U_B_SpecopsUniform_sgg","U_O_SpecopsUniform_blk","U_O_SpecopsUniform_ocamo","U_I_G_Story_Protagonist_F","U_C_HunterBody_grn","U_IG_Guerilla1_1","U_IG_Guerilla2_1","U_IG_Guerilla2_2","U_IG_Guerilla2_3","U_IG_Guerilla3_1","U_BG_Guerilla2_1","U_IG_Guerilla3_2","U_BG_Guerrilla_6_1","U_BG_Guerilla1_1","U_BG_Guerilla2_2","U_BG_Guerilla2_3","U_BG_Guerilla3_1"];
A3XAI_uniformTypes1 = ["U_C_Journalist","U_C_Poloshirt_blue","U_C_Poloshirt_burgundy","U_C_Poloshirt_salmon","U_C_Poloshirt_stripped","U_C_Poloshirt_tricolour","U_C_Poor_1","U_C_Poor_2","U_C_Poor_shorts_1","U_C_Scientist","U_OrestesBody","U_Rangemaster","U_NikosAgedBody","U_NikosBody","U_Competitor","U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam_vest","U_B_CombatUniform_mcam_worn","U_B_CTRG_1","U_B_CTRG_2","U_B_CTRG_3","U_I_CombatUniform","U_I_CombatUniform_shortsleeve","U_I_CombatUniform_tshirt","U_I_OfficerUniform","U_O_CombatUniform_ocamo","U_O_CombatUniform_oucamo","U_O_OfficerUniform_ocamo","U_B_SpecopsUniform_sgg","U_O_SpecopsUniform_blk","U_O_SpecopsUniform_ocamo","U_I_G_Story_Protagonist_F","U_C_HunterBody_grn","U_IG_Guerilla1_1","U_IG_Guerilla2_1","U_IG_Guerilla2_2","U_IG_Guerilla2_3","U_IG_Guerilla3_1","U_BG_Guerilla2_1","U_IG_Guerilla3_2","U_BG_Guerrilla_6_1","U_BG_Guerilla1_1","U_BG_Guerilla2_2","U_BG_Guerilla2_3","U_BG_Guerilla3_1"];
A3XAI_uniformTypes2 = ["U_C_Journalist","U_C_Poloshirt_blue","U_C_Poloshirt_burgundy","U_C_Poloshirt_salmon","U_C_Poloshirt_stripped","U_C_Poloshirt_tricolour","U_C_Poor_1","U_C_Poor_2","U_C_Poor_shorts_1","U_C_Scientist","U_OrestesBody","U_Rangemaster","U_NikosAgedBody","U_NikosBody","U_Competitor","U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam_vest","U_B_CombatUniform_mcam_worn","U_B_CTRG_1","U_B_CTRG_2","U_B_CTRG_3","U_I_CombatUniform","U_I_CombatUniform_shortsleeve","U_I_CombatUniform_tshirt","U_I_OfficerUniform","U_O_CombatUniform_ocamo","U_O_CombatUniform_oucamo","U_O_OfficerUniform_ocamo","U_B_SpecopsUniform_sgg","U_O_SpecopsUniform_blk","U_O_SpecopsUniform_ocamo","U_I_G_Story_Protagonist_F","U_C_HunterBody_grn","U_IG_Guerilla1_1","U_IG_Guerilla2_1","U_IG_Guerilla2_2","U_IG_Guerilla2_3","U_IG_Guerilla3_1","U_BG_Guerilla2_1","U_IG_Guerilla3_2","U_BG_Guerrilla_6_1","U_BG_Guerilla1_1","U_BG_Guerilla2_2","U_BG_Guerilla2_3","U_BG_Guerilla3_1"];
A3XAI_uniformTypes3 = ["U_C_Journalist","U_C_Poloshirt_blue","U_C_Poloshirt_burgundy","U_C_Poloshirt_salmon","U_C_Poloshirt_stripped","U_C_Poloshirt_tricolour","U_C_Poor_1","U_C_Poor_2","U_C_Poor_shorts_1","U_C_Scientist","U_OrestesBody","U_Rangemaster","U_NikosAgedBody","U_NikosBody","U_Competitor","U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam_vest","U_B_CombatUniform_mcam_worn","U_B_CTRG_1","U_B_CTRG_2","U_B_CTRG_3","U_I_CombatUniform","U_I_CombatUniform_shortsleeve","U_I_CombatUniform_tshirt","U_I_OfficerUniform","U_O_CombatUniform_ocamo","U_O_CombatUniform_oucamo","U_O_OfficerUniform_ocamo","U_B_SpecopsUniform_sgg","U_O_SpecopsUniform_blk","U_O_SpecopsUniform_ocamo","U_I_G_Story_Protagonist_F","U_C_HunterBody_grn","U_IG_Guerilla1_1","U_IG_Guerilla2_1","U_IG_Guerilla2_2","U_IG_Guerilla2_3","U_IG_Guerilla3_1","U_BG_Guerilla2_1","U_IG_Guerilla3_2","U_BG_Guerrilla_6_1","U_BG_Guerilla1_1","U_BG_Guerilla2_2","U_BG_Guerilla2_3","U_BG_Guerilla3_1"];


//AI weapon classnames. Note: A3XAI_pistolList, A3XAI_rifleList, A3XAI_machinegunList, A3XAI_sniperList will not be read if A3XAI_dynamicWeaponList is enabled.
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
A3XAI_pistolList = ["hgun_ACPC2_F","hgun_P07_F","hgun_Pistol_heavy_01_F","hgun_Pistol_heavy_02_F","hgun_Rook40_F"];
A3XAI_rifleList = ["arifle_Katiba_C_F","arifle_Katiba_F","arifle_Katiba_GL_F","arifle_Mk20_F","arifle_Mk20_GL_F","arifle_Mk20_GL_plain_F","arifle_Mk20_plain_F","arifle_Mk20C_F","arifle_Mk20C_plain_F","arifle_MX_Black_F","arifle_MX_F","arifle_MX_GL_Black_F","arifle_MX_GL_F","arifle_MXC_Black_F","arifle_MXC_F","arifle_SDAR_F","arifle_TRG20_F","arifle_TRG21_F","arifle_TRG21_GL_F"];
A3XAI_machinegunList = ["arifle_MX_SW_Black_F","arifle_MX_SW_F","LMG_Mk200_F","LMG_Zafir_F","MMG_01_hex_F","MMG_01_tan_F","MMG_02_black_F","MMG_02_camo_F","MMG_02_sand_F"];
A3XAI_sniperList = ["arifle_MXM_Black_F","arifle_MXM_F","srifle_DMR_01_F","srifle_DMR_02_camo_F","srifle_DMR_02_F","srifle_DMR_02_sniper_F","srifle_DMR_03_F","srifle_DMR_03_khaki_F","srifle_DMR_03_multicam_F","srifle_DMR_03_tan_F","srifle_DMR_03_woodland_F","srifle_DMR_04_F","srifle_DMR_04_Tan_F","srifle_DMR_05_blk_F","srifle_DMR_05_hex_F","srifle_DMR_05_tan_f","srifle_DMR_06_camo_F","srifle_DMR_06_olive_F","srifle_EBR_F","srifle_GM6_camo_F","srifle_GM6_F","srifle_LRR_camo_F","srifle_LRR_F"];


//AI weapon scope attachment settings. Note: A3XAI_weaponOpticsList will not be read if A3XAI_dynamicOpticsList is enabled.
A3XAI_weaponOpticsList = ["optic_NVS","optic_SOS","optic_LRPS","optic_AMS","optic_AMS_khk","optic_AMS_snd","optic_KHS_blk","optic_KHS_hex","optic_KHS_old","optic_KHS_tan","optic_DMS","optic_Arco","optic_Hamr","Elcan_Exile","Elcan_reflex_Exile","optic_MRCO","optic_Holosight","optic_Holosight_smg","optic_Aco","optic_ACO_grn","optic_Aco_smg","optic_ACO_grn_smg","optic_Yorris","optic_MRD"];


//AI backpack types (for AI levels 0-3). Note: A3XAI_backpackTypes0-3 will not be read if A3XAI_dynamicBackpackList is enabled.
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
A3XAI_backpackTypes0 = ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_dgtl","B_AssaultPack_khk","B_AssaultPack_mcamo","B_AssaultPack_rgr","B_AssaultPack_sgg","B_Bergen_blk","B_Bergen_mcamo","B_Bergen_rgr","B_Bergen_sgg","B_Carryall_cbr","B_Carryall_khk","B_Carryall_mcamo","B_Carryall_ocamo","B_Carryall_oli","B_Carryall_oucamo","B_FieldPack_blk","B_FieldPack_cbr","B_FieldPack_ocamo","B_FieldPack_oucamo","B_HuntingBackpack","B_Kitbag_cbr","B_Kitbag_mcamo","B_Kitbag_sgg","B_OutdoorPack_blk","B_OutdoorPack_blu","B_OutdoorPack_tan","B_TacticalPack_blk","B_TacticalPack_mcamo","B_TacticalPack_ocamo","B_TacticalPack_oli","B_TacticalPack_rgr"];
A3XAI_backpackTypes1 = ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_dgtl","B_AssaultPack_khk","B_AssaultPack_mcamo","B_AssaultPack_rgr","B_AssaultPack_sgg","B_Bergen_blk","B_Bergen_mcamo","B_Bergen_rgr","B_Bergen_sgg","B_Carryall_cbr","B_Carryall_khk","B_Carryall_mcamo","B_Carryall_ocamo","B_Carryall_oli","B_Carryall_oucamo","B_FieldPack_blk","B_FieldPack_cbr","B_FieldPack_ocamo","B_FieldPack_oucamo","B_HuntingBackpack","B_Kitbag_cbr","B_Kitbag_mcamo","B_Kitbag_sgg","B_OutdoorPack_blk","B_OutdoorPack_blu","B_OutdoorPack_tan","B_TacticalPack_blk","B_TacticalPack_mcamo","B_TacticalPack_ocamo","B_TacticalPack_oli","B_TacticalPack_rgr"];
A3XAI_backpackTypes2 = ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_dgtl","B_AssaultPack_khk","B_AssaultPack_mcamo","B_AssaultPack_rgr","B_AssaultPack_sgg","B_Bergen_blk","B_Bergen_mcamo","B_Bergen_rgr","B_Bergen_sgg","B_Carryall_cbr","B_Carryall_khk","B_Carryall_mcamo","B_Carryall_ocamo","B_Carryall_oli","B_Carryall_oucamo","B_FieldPack_blk","B_FieldPack_cbr","B_FieldPack_ocamo","B_FieldPack_oucamo","B_HuntingBackpack","B_Kitbag_cbr","B_Kitbag_mcamo","B_Kitbag_sgg","B_OutdoorPack_blk","B_OutdoorPack_blu","B_OutdoorPack_tan","B_TacticalPack_blk","B_TacticalPack_mcamo","B_TacticalPack_ocamo","B_TacticalPack_oli","B_TacticalPack_rgr"];
A3XAI_backpackTypes3 = ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_dgtl","B_AssaultPack_khk","B_AssaultPack_mcamo","B_AssaultPack_rgr","B_AssaultPack_sgg","B_Bergen_blk","B_Bergen_mcamo","B_Bergen_rgr","B_Bergen_sgg","B_Carryall_cbr","B_Carryall_khk","B_Carryall_mcamo","B_Carryall_ocamo","B_Carryall_oli","B_Carryall_oucamo","B_FieldPack_blk","B_FieldPack_cbr","B_FieldPack_ocamo","B_FieldPack_oucamo","B_HuntingBackpack","B_Kitbag_cbr","B_Kitbag_mcamo","B_Kitbag_sgg","B_OutdoorPack_blk","B_OutdoorPack_blu","B_OutdoorPack_tan","B_TacticalPack_blk","B_TacticalPack_mcamo","B_TacticalPack_ocamo","B_TacticalPack_oli","B_TacticalPack_rgr"];


//AI vest types (for AI levels 0-3). Note: A3XAI_vestTypes0-3 will not be read if A3XAI_dynamicVestList is enabled.
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
A3XAI_vestTypes0 = ["V_Press_F","V_Rangemaster_belt","V_TacVest_blk","V_TacVest_blk_POLICE","V_TacVest_brn","V_TacVest_camo","V_TacVest_khk","V_TacVest_oli","V_TacVestCamo_khk","V_TacVestIR_blk","V_I_G_resistanceLeader_F","V_BandollierB_blk","V_BandollierB_cbr","V_BandollierB_khk","V_BandollierB_oli","V_BandollierB_rgr","V_Chestrig_blk","V_Chestrig_khk","V_Chestrig_oli","V_Chestrig_rgr","V_HarnessO_brn","V_HarnessO_gry","V_HarnessOGL_brn","V_HarnessOGL_gry","V_HarnessOSpec_brn","V_HarnessOSpec_gry","V_PlateCarrier1_blk","V_PlateCarrier1_rgr","V_PlateCarrier2_rgr","V_PlateCarrier3_rgr","V_PlateCarrierGL_blk","V_PlateCarrierGL_mtp","V_PlateCarrierGL_rgr","V_PlateCarrierH_CTRG","V_PlateCarrierIA1_dgtl","V_PlateCarrierIA2_dgtl","V_PlateCarrierIAGL_dgtl","V_PlateCarrierIAGL_oli","V_PlateCarrierL_CTRG","V_PlateCarrierSpec_blk","V_PlateCarrierSpec_mtp","V_PlateCarrierSpec_rgr"];
A3XAI_vestTypes1 = ["V_Press_F","V_Rangemaster_belt","V_TacVest_blk","V_TacVest_blk_POLICE","V_TacVest_brn","V_TacVest_camo","V_TacVest_khk","V_TacVest_oli","V_TacVestCamo_khk","V_TacVestIR_blk","V_I_G_resistanceLeader_F","V_BandollierB_blk","V_BandollierB_cbr","V_BandollierB_khk","V_BandollierB_oli","V_BandollierB_rgr","V_Chestrig_blk","V_Chestrig_khk","V_Chestrig_oli","V_Chestrig_rgr","V_HarnessO_brn","V_HarnessO_gry","V_HarnessOGL_brn","V_HarnessOGL_gry","V_HarnessOSpec_brn","V_HarnessOSpec_gry","V_PlateCarrier1_blk","V_PlateCarrier1_rgr","V_PlateCarrier2_rgr","V_PlateCarrier3_rgr","V_PlateCarrierGL_blk","V_PlateCarrierGL_mtp","V_PlateCarrierGL_rgr","V_PlateCarrierH_CTRG","V_PlateCarrierIA1_dgtl","V_PlateCarrierIA2_dgtl","V_PlateCarrierIAGL_dgtl","V_PlateCarrierIAGL_oli","V_PlateCarrierL_CTRG","V_PlateCarrierSpec_blk","V_PlateCarrierSpec_mtp","V_PlateCarrierSpec_rgr"];
A3XAI_vestTypes2 = ["V_Press_F","V_Rangemaster_belt","V_TacVest_blk","V_TacVest_blk_POLICE","V_TacVest_brn","V_TacVest_camo","V_TacVest_khk","V_TacVest_oli","V_TacVestCamo_khk","V_TacVestIR_blk","V_I_G_resistanceLeader_F","V_BandollierB_blk","V_BandollierB_cbr","V_BandollierB_khk","V_BandollierB_oli","V_BandollierB_rgr","V_Chestrig_blk","V_Chestrig_khk","V_Chestrig_oli","V_Chestrig_rgr","V_HarnessO_brn","V_HarnessO_gry","V_HarnessOGL_brn","V_HarnessOGL_gry","V_HarnessOSpec_brn","V_HarnessOSpec_gry","V_PlateCarrier1_blk","V_PlateCarrier1_rgr","V_PlateCarrier2_rgr","V_PlateCarrier3_rgr","V_PlateCarrierGL_blk","V_PlateCarrierGL_mtp","V_PlateCarrierGL_rgr","V_PlateCarrierH_CTRG","V_PlateCarrierIA1_dgtl","V_PlateCarrierIA2_dgtl","V_PlateCarrierIAGL_dgtl","V_PlateCarrierIAGL_oli","V_PlateCarrierL_CTRG","V_PlateCarrierSpec_blk","V_PlateCarrierSpec_mtp","V_PlateCarrierSpec_rgr"];
A3XAI_vestTypes3 = ["V_Press_F","V_Rangemaster_belt","V_TacVest_blk","V_TacVest_blk_POLICE","V_TacVest_brn","V_TacVest_camo","V_TacVest_khk","V_TacVest_oli","V_TacVestCamo_khk","V_TacVestIR_blk","V_I_G_resistanceLeader_F","V_BandollierB_blk","V_BandollierB_cbr","V_BandollierB_khk","V_BandollierB_oli","V_BandollierB_rgr","V_Chestrig_blk","V_Chestrig_khk","V_Chestrig_oli","V_Chestrig_rgr","V_HarnessO_brn","V_HarnessO_gry","V_HarnessOGL_brn","V_HarnessOGL_gry","V_HarnessOSpec_brn","V_HarnessOSpec_gry","V_PlateCarrier1_blk","V_PlateCarrier1_rgr","V_PlateCarrier2_rgr","V_PlateCarrier3_rgr","V_PlateCarrierGL_blk","V_PlateCarrierGL_mtp","V_PlateCarrierGL_rgr","V_PlateCarrierH_CTRG","V_PlateCarrierIA1_dgtl","V_PlateCarrierIA2_dgtl","V_PlateCarrierIAGL_dgtl","V_PlateCarrierIAGL_oli","V_PlateCarrierL_CTRG","V_PlateCarrierSpec_blk","V_PlateCarrierSpec_mtp","V_PlateCarrierSpec_rgr"];


//AI head gear types. Note: A3XAI_headgearTypes0-3 will not be read if A3XAI_dynamicHeadgearList is enabled.
A3XAI_headgearTypes0 = ["H_Cap_blk","H_Cap_blk_Raven","H_Cap_blu","H_Cap_brn_SPECOPS","H_Cap_grn","H_Cap_headphones","H_Cap_khaki_specops_UK","H_Cap_oli","H_Cap_press","H_Cap_red","H_Cap_tan","H_Cap_tan_specops_US","H_Watchcap_blk","H_Watchcap_camo","H_Watchcap_khk","H_Watchcap_sgg","H_MilCap_blue","H_MilCap_dgtl","H_MilCap_mcamo","H_MilCap_ocamo","H_MilCap_oucamo","H_MilCap_rucamo","H_Bandanna_camo","H_Bandanna_cbr","H_Bandanna_gry","H_Bandanna_khk","H_Bandanna_khk_hs","H_Bandanna_mcamo","H_Bandanna_sgg","H_Bandanna_surfer","H_Booniehat_dgtl","H_Booniehat_dirty","H_Booniehat_grn","H_Booniehat_indp","H_Booniehat_khk","H_Booniehat_khk_hs","H_Booniehat_mcamo","H_Booniehat_tan","H_Hat_blue","H_Hat_brown","H_Hat_camo","H_Hat_checker","H_Hat_grey","H_Hat_tan","H_StrawHat","H_StrawHat_dark","H_Beret_02","H_Beret_blk","H_Beret_blk_POLICE","H_Beret_brn_SF","H_Beret_Colonel","H_Beret_grn","H_Beret_grn_SF","H_Beret_ocamo","H_Beret_red","H_Shemag_khk","H_Shemag_olive","H_Shemag_olive_hs"];
A3XAI_headgearTypes1 = ["H_Cap_blk","H_Cap_blk_Raven","H_Cap_blu","H_Cap_brn_SPECOPS","H_Cap_grn","H_Cap_headphones","H_Cap_khaki_specops_UK","H_Cap_oli","H_Cap_press","H_Cap_red","H_Cap_tan","H_Cap_tan_specops_US","H_Watchcap_blk","H_Watchcap_camo","H_Watchcap_khk","H_Watchcap_sgg","H_MilCap_blue","H_MilCap_dgtl","H_MilCap_mcamo","H_MilCap_ocamo","H_MilCap_oucamo","H_MilCap_rucamo","H_Bandanna_camo","H_Bandanna_cbr","H_Bandanna_gry","H_Bandanna_khk","H_Bandanna_khk_hs","H_Bandanna_mcamo","H_Bandanna_sgg","H_Bandanna_surfer","H_Booniehat_dgtl","H_Booniehat_dirty","H_Booniehat_grn","H_Booniehat_indp","H_Booniehat_khk","H_Booniehat_khk_hs","H_Booniehat_mcamo","H_Booniehat_tan","H_Hat_blue","H_Hat_brown","H_Hat_camo","H_Hat_checker","H_Hat_grey","H_Hat_tan","H_StrawHat","H_StrawHat_dark","H_Beret_02","H_Beret_blk","H_Beret_blk_POLICE","H_Beret_brn_SF","H_Beret_Colonel","H_Beret_grn","H_Beret_grn_SF","H_Beret_ocamo","H_Beret_red","H_Shemag_khk","H_Shemag_olive","H_Shemag_olive_hs"];
A3XAI_headgearTypes2 = ["H_Cap_blk","H_Cap_blk_Raven","H_Cap_blu","H_Cap_brn_SPECOPS","H_Cap_grn","H_Cap_headphones","H_Cap_khaki_specops_UK","H_Cap_oli","H_Cap_press","H_Cap_red","H_Cap_tan","H_Cap_tan_specops_US","H_Watchcap_blk","H_Watchcap_camo","H_Watchcap_khk","H_Watchcap_sgg","H_MilCap_blue","H_MilCap_dgtl","H_MilCap_mcamo","H_MilCap_ocamo","H_MilCap_oucamo","H_MilCap_rucamo","H_Bandanna_camo","H_Bandanna_cbr","H_Bandanna_gry","H_Bandanna_khk","H_Bandanna_khk_hs","H_Bandanna_mcamo","H_Bandanna_sgg","H_Bandanna_surfer","H_Booniehat_dgtl","H_Booniehat_dirty","H_Booniehat_grn","H_Booniehat_indp","H_Booniehat_khk","H_Booniehat_khk_hs","H_Booniehat_mcamo","H_Booniehat_tan","H_Hat_blue","H_Hat_brown","H_Hat_camo","H_Hat_checker","H_Hat_grey","H_Hat_tan","H_StrawHat","H_StrawHat_dark","H_Beret_02","H_Beret_blk","H_Beret_blk_POLICE","H_Beret_brn_SF","H_Beret_Colonel","H_Beret_grn","H_Beret_grn_SF","H_Beret_ocamo","H_Beret_red","H_Shemag_khk","H_Shemag_olive","H_Shemag_olive_hs"];
A3XAI_headgearTypes3 = ["H_Cap_blk","H_Cap_blk_Raven","H_Cap_blu","H_Cap_brn_SPECOPS","H_Cap_grn","H_Cap_headphones","H_Cap_khaki_specops_UK","H_Cap_oli","H_Cap_press","H_Cap_red","H_Cap_tan","H_Cap_tan_specops_US","H_Watchcap_blk","H_Watchcap_camo","H_Watchcap_khk","H_Watchcap_sgg","H_MilCap_blue","H_MilCap_dgtl","H_MilCap_mcamo","H_MilCap_ocamo","H_MilCap_oucamo","H_MilCap_rucamo","H_Bandanna_camo","H_Bandanna_cbr","H_Bandanna_gry","H_Bandanna_khk","H_Bandanna_khk_hs","H_Bandanna_mcamo","H_Bandanna_sgg","H_Bandanna_surfer","H_Booniehat_dgtl","H_Booniehat_dirty","H_Booniehat_grn","H_Booniehat_indp","H_Booniehat_khk","H_Booniehat_khk_hs","H_Booniehat_mcamo","H_Booniehat_tan","H_Hat_blue","H_Hat_brown","H_Hat_camo","H_Hat_checker","H_Hat_grey","H_Hat_tan","H_StrawHat","H_StrawHat_dark","H_Beret_02","H_Beret_blk","H_Beret_blk_POLICE","H_Beret_brn_SF","H_Beret_Colonel","H_Beret_grn","H_Beret_grn_SF","H_Beret_ocamo","H_Beret_red","H_Shemag_khk","H_Shemag_olive","H_Shemag_olive_hs"];


//AI Food/Loot item types. 
// Note: A3XAI_foodLoot will not be read if A3XAI_dynamicFoodList is enabled.
// Note: A3XAI_MiscLoot will not be read if A3XAI_dynamicLootList is enabled.
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
A3XAI_foodLoot = ["Exile_Item_GloriousKnakworst","Exile_Item_SausageGravy","Exile_Item_ChristmasTinner","Exile_Item_BBQSandwich","Exile_Item_Surstromming","Exile_Item_Catfood","Exile_Item_PlasticBottleFreshWater","Exile_Item_Beer","Exile_Item_Energydrink"];
A3XAI_MiscLoot = ["Exile_Item_Rope","Exile_Item_DuctTape","Exile_Item_ExtensionCord","Exile_Item_FuelCanisterEmpty","Exile_Item_JunkMetal","Exile_Item_LightBulb","Exile_Item_MetalBoard","Exile_Item_MetalPole","Exile_Item_SafeKit","Exile_Item_CamoTentKit","Exile_Item_CodeLock","Exile_Item_InstaDoc"];


//AI toolbelt item types. Toolbelt items are added to AI inventory upon death. Format: [item classname, item probability]
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

A3XAI_tools0 = [
	["Exile_Item_XM8",0.90],["ItemCompass",0.50],["ItemMap",0.50],["ItemGPS",0.05],["ItemRadio",0.05]
];
A3XAI_tools1 = [
	["Exile_Item_XM8",0.90],["ItemCompass",0.60],["ItemMap",0.60],["ItemGPS",0.10],["ItemRadio",0.10]
];
A3XAI_tools2 = [
	["Exile_Item_XM8",0.90],["ItemCompass",0.70],["ItemMap",0.70],["ItemGPS",0.15],["ItemRadio",0.15]
];
A3XAI_tools3 = [
	["Exile_Item_XM8",0.90],["ItemCompass",0.80],["ItemMap",0.80],["ItemGPS",0.20],["ItemRadio",0.20]
];


//AI-useable toolbelt item types. These items are added to AI inventory at unit creation and may be used by AI. Format: [item classname, item probability]
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

A3XAI_gadgets0 = [
	["binocular",0.40],["NVGoggles",0.05]
];
A3XAI_gadgets1 = [
	["binocular",0.50],["NVGoggles",0.10]
];
A3XAI_gadgets2 = [
	["binocular",0.60],["NVGoggles",0.15]
];
A3XAI_gadgets3 = [
	["binocular",0.70],["NVGoggles",0.20]
];

//NOTHING TO EDIT BEYOND THIS POINT
diag_log "[A3XAI] A3XAI configuration file loaded.";
