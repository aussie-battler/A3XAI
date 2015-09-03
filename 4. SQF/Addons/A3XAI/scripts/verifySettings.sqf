_startTime = diag_tickTime;

//Check value types
{
	_value = missionNamespace getVariable (_x select 0);
	if ((isNil "_value") or {(typeName _value) != (typeName (_x select 1))}) then {
		missionNamespace setVariable [(_x select 0),(_x select 1)];
		diag_log format ["[A3XAI] Error found in variable %1, resetting to default value.",(_x select 0)];
	};
} forEach [
	["A3XAI_debugLevel",0],
	["A3XAI_monitorRate",300],
	["A3XAI_verifyClassnames",true],
	["A3XAI_cleanupDelay",900],
	["A3XAI_dynamicUniformList",true],
	["A3XAI_dynamicOpticsList",true],
	["A3XAI_dynamicWeaponList",true],
	["A3XAI_dynamicBackpackList",true],
	["A3XAI_dynamicVestList",true],
	["A3XAI_dynamicHeadgearList",true],
	["A3XAI_dynamicFoodList",true],
	["A3XAI_dynamicLootList",true],
	["A3XAI_dynamicOpticsList",true],
	["A3XAI_dynamicWeaponBlacklist",[]],
	["A3XAI_dynamicUniformLevels",[0,1,2,3]],
	["A3XAI_dynamicBackpackLevels",[0,1,2,3]],
	["A3XAI_dynamicVestLevels",[0,1,2,3]],
	["A3XAI_dynamicHeadgearLevels",[0,1,2,3]],
	["A3XAI_playerCountThreshold",20],
	["A3XAI_chanceScalingThreshold",0.50],
	["A3XAI_upwardsChanceScaling",true],
	["A3XAI_maxAirReinforcements",5],
	["A3XAI_airReinforcementVehicles",["B_Heli_Transport_01_F","B_Heli_Light_01_armed_F"]],
	["A3XAI_airReinforcementSpawnChance0",0.00],
	["A3XAI_airReinforcementSpawnChance1",0.10],
	["A3XAI_airReinforcementSpawnChance2",0.20],
	["A3XAI_airReinforcementSpawnChance3",0.30],
	["A3XAI_airReinforcementAllowedTypes",["static","dynamic","random"]],
	["A3XAI_airReinforcementDuration0",120],
	["A3XAI_airReinforcementDuration1",180],
	["A3XAI_airReinforcementDuration2",240],
	["A3XAI_airReinforcementDuration3",300],
	["A3XAI_maxUAVPatrols",0],
	["A3XAI_UAVList",[
		["I_UAV_02_CAS_F",5],
		["I_UAV_02_F",5],
		["B_UAV_02_CAS_F",5],
		["B_UAV_02_F",5],
		["O_UAV_02_CAS_F",5],
		["O_UAV_02_F",5]
	]],
	["A3XAI_levelChancesUAV",[0.35,0.50,0.15,0.00]],
	["A3XAI_respawnUAVMinTime",600],
	["A3XAI_respawnUAVMaxTime",900],
	["A3XAI_UAVDetectOnly",false],
	["A3XAI_UAVCallReinforceCooldown",1800],
	["A3XAI_UAVDetectChance",0.50],
	["A3XAI_maxUGVPatrols",0],
	["A3XAI_UGVList",[
		["I_UGV_01_rcws_F",5],
		["B_UGV_01_rcws_F",5],
		["O_UGV_01_rcws_F",5]
	]],
	
	["A3XAI_levelChancesUGV",[0.35,0.50,0.15,0.00]],
	["A3XAI_respawnUGVMinTime",600],
	["A3XAI_respawnUGVMaxTime",900],
	["A3XAI_UGVDetectOnly",false],
	["A3XAI_UGVCallReinforceCooldown",1800],
	["A3XAI_UGVDetectChance",0.50],
	["A3XAI_findKiller",true],
	["A3XAI_tempNVGs",false],
	["A3XAI_GLRequirement",2],
	["A3XAI_launcherTypes",[]],
	["A3XAI_launcherLevelReq",-1],
	["A3XAI_launchersPerGroup",1],
	["A3XAI_enableHealing",true],
	["A3XAI_radioMsgs",false],
	["A3XAI_deathMessages",false],
	["A3XAI_loadCustomFile",true],
	["A3XAI_enableRespectRewards",true],
	["A3XAI_enableHC",false],
	["A3XAI_waitForHC",false],
	["A3XAI_enableStaticSpawns",true],
	["A3XAI_minAI_capitalCity",2],
	["A3XAI_addAI_capitalCity",1],
	["A3XAI_unitLevel_capitalCity",1],
	["A3XAI_minAI_city",1],
	["A3XAI_addAI_city",2],
	["A3XAI_unitLevel_city",1],
	["A3XAI_minAI_village",1],
	["A3XAI_addAI_village",1],
	["A3XAI_unitLevel_village",0],
	["A3XAI_minAI_remoteArea",1],
	["A3XAI_addAI_remoteArea",1],
	["A3XAI_unitLevel_remoteArea",2],
	["A3XAI_minAI_wilderness",1],
	["A3XAI_addAI_wilderness",1],
	["A3XAI_unitLevel_wilderness",2],
	["A3XAI_tempBlacklistTime",600],
	["A3XAI_respawnTimeMin",300],
	["A3XAI_respawnTimeMax",600],
	["A3XAI_despawnWait",120],
	["A3XAI_spawnChance_capitalCity",0.70],
	["A3XAI_spawnChance_city",0.60],
	["A3XAI_spawnChance_village",0.40],
	["A3XAI_spawnChance_remoteArea",0.80],
	["A3XAI_spawnChance_wilderness",0.50],
	["A3XAI_respawnLimit_village",-1],
	["A3XAI_respawnLimit_city",-1],
	["A3XAI_respawnLimit_capitalCity",-1],
	["A3XAI_respawnLimit_remoteArea",-1],
	["A3XAI_staticBlacklistLocations",[]],
	["A3XAI_dynMaxSpawns",15],
	["A3XAI_dynCooldownTime",900],
	["A3XAI_dynResetLastSpawn",3600],
	["A3XAI_huntingChance",0.60],
	//["A3XAI_airReinforceChance",0.40],
	["A3XAI_dynDespawnWait",120],
	["A3XAI_maxRandomSpawns",-1],
	["A3XAI_randDespawnWait",120],
	["A3XAI_minRandSpawnDist",600],
	["A3XAI_maxHeliPatrols",0],
	["A3XAI_levelChancesAir",[0.00,0.50,0.35,0.15]],
	["A3XAI_respawnAirMinTime",600],
	["A3XAI_respawnAirMaxTime",900],
	["A3XAI_heliList",[
		["B_Heli_Light_01_armed_F",5],
		["B_Heli_Attack_01_F",2]
	]],
	["A3XAI_heliGunnerUnits",3],
	["A3XAI_removeExplosiveAmmo",true],
	["A3XAI_roadKillPenalty",true],
	["A3XAI_airDetectChance",0.80],
	["A3XAI_UAVDetectChance",0.80],
	["A3XAI_UGVDetectChance",0.80],
	["A3XAI_paraDropChance",0.50],
	["A3XAI_paraDropCooldown",1800],
	["A3XAI_UAVCallReinforceCooldown",1800],
	["A3XAI_UGVCallReinforceCooldown",1800],
	["A3XAI_paraDropAmount",3],
	["A3XAI_maxLandPatrols",0],
	["A3XAI_levelChancesLand",[0.00,0.50,0.35,0.15]],
	["A3XAI_respawnLandMinTime",600],
	["A3XAI_respawnLandMaxTime",900],
	["A3XAI_vehList",[
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
	]],
	["A3XAI_vehGunnerUnits",2],
	["A3XAI_vehCargoUnits",3],
	["A3XAI_waypointBlacklistAir",[]],
	["A3XAI_waypointBlacklistLand",[]],
	["A3XAI_skill0",[	
		["aimingAccuracy",0.10,0.15],
		["aimingShake",0.50,0.59],
		["aimingSpeed",0.50,0.59],
		["spotDistance",0.50,0.59],
		["spotTime",0.50,0.59],
		["courage",0.50,0.59],
		["reloadSpeed",0.50,0.59],
		["commanding",0.50,0.59],
		["general",0.50,0.59]
	]],
	["A3XAI_skill1",[	
		["aimingAccuracy",0.15,0.20],
		["aimingShake",0.60,0.69],
		["aimingSpeed",0.60,0.69],
		["spotDistance",0.60,0.69],
		["spotTime",0.60,0.69],
		["courage",0.60,0.69],
		["reloadSpeed",0.60,0.69],
		["commanding",0.60,0.69],
		["general",0.60,0.69]
	]],
	["A3XAI_skill2",[	
		["aimingAccuracy",0.20,0.25],
		["aimingShake",0.70,0.85],
		["aimingSpeed",0.70,0.85],
		["spotDistance",0.70,0.85],
		["spotTime",0.70,0.85],
		["courage",0.70,0.85],
		["reloadSpeed",0.70,0.85],
		["commanding",0.70,0.85],
		["general",0.70,0.85]
	]],
	["A3XAI_skill3",[	
		["aimingAccuracy",0.25,0.30],
		["aimingShake",0.85,0.95],
		["aimingSpeed",0.85,0.95],
		["spotDistance",0.85,0.95],
		["spotTime",0.85,0.95],
		["courage",0.85,0.95],
		["reloadSpeed",0.85,0.95],
		["commanding",0.85,0.95],
		["general",0.85,0.95]
	]],
	["A3XAI_useWeaponChance0",[0.20,0.80,0.00,0.00]],
	["A3XAI_useWeaponChance1",[0.00,0.90,0.05,0.05]],
	["A3XAI_useWeaponChance2",[0.00,0.80,0.10,0.10]],
	["A3XAI_useWeaponChance3",[0.00,0.70,0.15,0.15]],
	["A3XAI_addUniformChance0",0.60],
	["A3XAI_addUniformChance1",0.70],
	["A3XAI_addUniformChance2",0.80],
	["A3XAI_addUniformChance3",0.90],
	["A3XAI_addBackpackChance0",0.60],
	["A3XAI_addBackpackChance1",0.70],
	["A3XAI_addBackpackChance2",0.80],
	["A3XAI_addBackpackChance3",0.90],
	["A3XAI_addVestChance0",0.60],
	["A3XAI_addVestChance1",0.70],
	["A3XAI_addVestChance2",0.80],
	["A3XAI_addVestChance3",0.90],
	["A3XAI_addHeadgearChance0",0.60],
	["A3XAI_addHeadgearChance1",0.70],
	["A3XAI_addHeadgearChance2",0.80],
	["A3XAI_addHeadgearChance3",0.90],
	["A3XAI_opticsChance0",0.00],
	["A3XAI_opticsChance1",0.30],
	["A3XAI_opticsChance2",0.60],
	["A3XAI_opticsChance3",0.90],
	["A3XAI_pointerChance0",0.00],
	["A3XAI_pointerChance1",0.30],
	["A3XAI_pointerChance2",0.60],
	["A3XAI_pointerChance3",0.90],
	["A3XAI_muzzleChance0",0.00],
	["A3XAI_muzzleChance1",0.30],
	["A3XAI_muzzleChance2",0.60],
	["A3XAI_muzzleChance3",0.90],
	["A3XAI_underbarrelChance0",0.00],
	["A3XAI_underbarrelChance1",0.30],
	["A3XAI_underbarrelChance2",0.60],
	["A3XAI_underbarrelChance3",0.90],
	["A3XAI_foodLootCount",2],
	["A3XAI_miscLootCount",2],
	["A3XAI_chanceFirstAidKit",0.25],
	["A3XAI_chanceFoodLoot",0.40],
	["A3XAI_chanceMiscLoot",0.40],
	["A3XAI_lootPullChance0",0.20],
	["A3XAI_lootPullChance1",0.40],
	["A3XAI_lootPullChance2",0.60],
	["A3XAI_lootPullChance3",0.80],
	["A3XAI_uniformTypes0",["U_C_Journalist","U_C_Poloshirt_blue","U_C_Poloshirt_burgundy","U_C_Poloshirt_salmon","U_C_Poloshirt_stripped","U_C_Poloshirt_tricolour","U_C_Poor_1","U_C_Poor_2","U_C_Poor_shorts_1","U_C_Scientist","U_OrestesBody","U_Rangemaster","U_NikosAgedBody","U_NikosBody","U_Competitor","U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam_vest","U_B_CombatUniform_mcam_worn","U_B_CTRG_1","U_B_CTRG_2","U_B_CTRG_3","U_I_CombatUniform","U_I_CombatUniform_shortsleeve","U_I_CombatUniform_tshirt","U_I_OfficerUniform","U_O_CombatUniform_ocamo","U_O_CombatUniform_oucamo","U_O_OfficerUniform_ocamo","U_B_SpecopsUniform_sgg","U_O_SpecopsUniform_blk","U_O_SpecopsUniform_ocamo","U_I_G_Story_Protagonist_F","U_C_HunterBody_grn","U_IG_Guerilla1_1","U_IG_Guerilla2_1","U_IG_Guerilla2_2","U_IG_Guerilla2_3","U_IG_Guerilla3_1","U_BG_Guerilla2_1","U_IG_Guerilla3_2","U_BG_Guerrilla_6_1","U_BG_Guerilla1_1","U_BG_Guerilla2_2","U_BG_Guerilla2_3","U_BG_Guerilla3_1"]],
	["A3XAI_uniformTypes1",["U_C_Journalist","U_C_Poloshirt_blue","U_C_Poloshirt_burgundy","U_C_Poloshirt_salmon","U_C_Poloshirt_stripped","U_C_Poloshirt_tricolour","U_C_Poor_1","U_C_Poor_2","U_C_Poor_shorts_1","U_C_Scientist","U_OrestesBody","U_Rangemaster","U_NikosAgedBody","U_NikosBody","U_Competitor","U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam_vest","U_B_CombatUniform_mcam_worn","U_B_CTRG_1","U_B_CTRG_2","U_B_CTRG_3","U_I_CombatUniform","U_I_CombatUniform_shortsleeve","U_I_CombatUniform_tshirt","U_I_OfficerUniform","U_O_CombatUniform_ocamo","U_O_CombatUniform_oucamo","U_O_OfficerUniform_ocamo","U_B_SpecopsUniform_sgg","U_O_SpecopsUniform_blk","U_O_SpecopsUniform_ocamo","U_I_G_Story_Protagonist_F","U_C_HunterBody_grn","U_IG_Guerilla1_1","U_IG_Guerilla2_1","U_IG_Guerilla2_2","U_IG_Guerilla2_3","U_IG_Guerilla3_1","U_BG_Guerilla2_1","U_IG_Guerilla3_2","U_BG_Guerrilla_6_1","U_BG_Guerilla1_1","U_BG_Guerilla2_2","U_BG_Guerilla2_3","U_BG_Guerilla3_1"]],
	["A3XAI_uniformTypes2",["U_C_Journalist","U_C_Poloshirt_blue","U_C_Poloshirt_burgundy","U_C_Poloshirt_salmon","U_C_Poloshirt_stripped","U_C_Poloshirt_tricolour","U_C_Poor_1","U_C_Poor_2","U_C_Poor_shorts_1","U_C_Scientist","U_OrestesBody","U_Rangemaster","U_NikosAgedBody","U_NikosBody","U_Competitor","U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam_vest","U_B_CombatUniform_mcam_worn","U_B_CTRG_1","U_B_CTRG_2","U_B_CTRG_3","U_I_CombatUniform","U_I_CombatUniform_shortsleeve","U_I_CombatUniform_tshirt","U_I_OfficerUniform","U_O_CombatUniform_ocamo","U_O_CombatUniform_oucamo","U_O_OfficerUniform_ocamo","U_B_SpecopsUniform_sgg","U_O_SpecopsUniform_blk","U_O_SpecopsUniform_ocamo","U_I_G_Story_Protagonist_F","U_C_HunterBody_grn","U_IG_Guerilla1_1","U_IG_Guerilla2_1","U_IG_Guerilla2_2","U_IG_Guerilla2_3","U_IG_Guerilla3_1","U_BG_Guerilla2_1","U_IG_Guerilla3_2","U_BG_Guerrilla_6_1","U_BG_Guerilla1_1","U_BG_Guerilla2_2","U_BG_Guerilla2_3","U_BG_Guerilla3_1"]],
	["A3XAI_uniformTypes3",["U_C_Journalist","U_C_Poloshirt_blue","U_C_Poloshirt_burgundy","U_C_Poloshirt_salmon","U_C_Poloshirt_stripped","U_C_Poloshirt_tricolour","U_C_Poor_1","U_C_Poor_2","U_C_Poor_shorts_1","U_C_Scientist","U_OrestesBody","U_Rangemaster","U_NikosAgedBody","U_NikosBody","U_Competitor","U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam_vest","U_B_CombatUniform_mcam_worn","U_B_CTRG_1","U_B_CTRG_2","U_B_CTRG_3","U_I_CombatUniform","U_I_CombatUniform_shortsleeve","U_I_CombatUniform_tshirt","U_I_OfficerUniform","U_O_CombatUniform_ocamo","U_O_CombatUniform_oucamo","U_O_OfficerUniform_ocamo","U_B_SpecopsUniform_sgg","U_O_SpecopsUniform_blk","U_O_SpecopsUniform_ocamo","U_I_G_Story_Protagonist_F","U_C_HunterBody_grn","U_IG_Guerilla1_1","U_IG_Guerilla2_1","U_IG_Guerilla2_2","U_IG_Guerilla2_3","U_IG_Guerilla3_1","U_BG_Guerilla2_1","U_IG_Guerilla3_2","U_BG_Guerrilla_6_1","U_BG_Guerilla1_1","U_BG_Guerilla2_2","U_BG_Guerilla2_3","U_BG_Guerilla3_1"]],
	["A3XAI_pistolList",["hgun_ACPC2_F","hgun_P07_F","hgun_Pistol_heavy_01_F","hgun_Pistol_heavy_02_F","hgun_Rook40_F"]],
	["A3XAI_rifleList",["arifle_Katiba_C_F","arifle_Katiba_F","arifle_Katiba_GL_F","arifle_Mk20_F","arifle_Mk20_GL_F","arifle_Mk20_GL_plain_F","arifle_Mk20_plain_F","arifle_Mk20C_F","arifle_Mk20C_plain_F","arifle_MX_Black_F","arifle_MX_F","arifle_MX_GL_Black_F","arifle_MX_GL_F","arifle_MXC_Black_F","arifle_MXC_F","arifle_SDAR_F","arifle_TRG20_F","arifle_TRG21_F","arifle_TRG21_GL_F"]],
	["A3XAI_machinegunList",["arifle_MX_SW_Black_F","arifle_MX_SW_F","LMG_Mk200_F","LMG_Zafir_F","MMG_01_hex_F","MMG_01_tan_F","MMG_02_black_F","MMG_02_camo_F","MMG_02_sand_F"]],
	["A3XAI_sniperList",["arifle_MXM_Black_F","arifle_MXM_F","srifle_DMR_01_F","srifle_DMR_02_camo_F","srifle_DMR_02_F","srifle_DMR_02_sniper_F","srifle_DMR_03_F","srifle_DMR_03_khaki_F","srifle_DMR_03_multicam_F","srifle_DMR_03_tan_F","srifle_DMR_03_woodland_F","srifle_DMR_04_F","srifle_DMR_04_Tan_F","srifle_DMR_05_blk_F","srifle_DMR_05_hex_F","srifle_DMR_05_tan_f","srifle_DMR_06_camo_F","srifle_DMR_06_olive_F","srifle_EBR_F","srifle_GM6_camo_F","srifle_GM6_F","srifle_LRR_camo_F","srifle_LRR_F"]],
	["A3XAI_weaponOpticsList",["optic_NVS","optic_SOS","optic_LRPS","optic_AMS","optic_AMS_khk","optic_AMS_snd","optic_KHS_blk","optic_KHS_hex","optic_KHS_old","optic_KHS_tan","optic_DMS","optic_Arco","optic_Hamr","Elcan_Exile","Elcan_reflex_Exile","optic_MRCO","optic_Holosight","optic_Holosight_smg","optic_Aco","optic_ACO_grn","optic_Aco_smg","optic_ACO_grn_smg","optic_Yorris","optic_MRD"]],
	["A3XAI_backpackTypes0",["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_dgtl","B_AssaultPack_khk","B_AssaultPack_mcamo","B_AssaultPack_rgr","B_AssaultPack_sgg","B_Bergen_blk","B_Bergen_mcamo","B_Bergen_rgr","B_Bergen_sgg","B_Carryall_cbr","B_Carryall_khk","B_Carryall_mcamo","B_Carryall_ocamo","B_Carryall_oli","B_Carryall_oucamo","B_FieldPack_blk","B_FieldPack_cbr","B_FieldPack_ocamo","B_FieldPack_oucamo","B_HuntingBackpack","B_Kitbag_cbr","B_Kitbag_mcamo","B_Kitbag_sgg","B_OutdoorPack_blk","B_OutdoorPack_blu","B_OutdoorPack_tan","B_TacticalPack_blk","B_TacticalPack_mcamo","B_TacticalPack_ocamo","B_TacticalPack_oli","B_TacticalPack_rgr"]],
	["A3XAI_backpackTypes1",["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_dgtl","B_AssaultPack_khk","B_AssaultPack_mcamo","B_AssaultPack_rgr","B_AssaultPack_sgg","B_Bergen_blk","B_Bergen_mcamo","B_Bergen_rgr","B_Bergen_sgg","B_Carryall_cbr","B_Carryall_khk","B_Carryall_mcamo","B_Carryall_ocamo","B_Carryall_oli","B_Carryall_oucamo","B_FieldPack_blk","B_FieldPack_cbr","B_FieldPack_ocamo","B_FieldPack_oucamo","B_HuntingBackpack","B_Kitbag_cbr","B_Kitbag_mcamo","B_Kitbag_sgg","B_OutdoorPack_blk","B_OutdoorPack_blu","B_OutdoorPack_tan","B_TacticalPack_blk","B_TacticalPack_mcamo","B_TacticalPack_ocamo","B_TacticalPack_oli","B_TacticalPack_rgr"]],
	["A3XAI_backpackTypes2",["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_dgtl","B_AssaultPack_khk","B_AssaultPack_mcamo","B_AssaultPack_rgr","B_AssaultPack_sgg","B_Bergen_blk","B_Bergen_mcamo","B_Bergen_rgr","B_Bergen_sgg","B_Carryall_cbr","B_Carryall_khk","B_Carryall_mcamo","B_Carryall_ocamo","B_Carryall_oli","B_Carryall_oucamo","B_FieldPack_blk","B_FieldPack_cbr","B_FieldPack_ocamo","B_FieldPack_oucamo","B_HuntingBackpack","B_Kitbag_cbr","B_Kitbag_mcamo","B_Kitbag_sgg","B_OutdoorPack_blk","B_OutdoorPack_blu","B_OutdoorPack_tan","B_TacticalPack_blk","B_TacticalPack_mcamo","B_TacticalPack_ocamo","B_TacticalPack_oli","B_TacticalPack_rgr"]],
	["A3XAI_backpackTypes3",["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_dgtl","B_AssaultPack_khk","B_AssaultPack_mcamo","B_AssaultPack_rgr","B_AssaultPack_sgg","B_Bergen_blk","B_Bergen_mcamo","B_Bergen_rgr","B_Bergen_sgg","B_Carryall_cbr","B_Carryall_khk","B_Carryall_mcamo","B_Carryall_ocamo","B_Carryall_oli","B_Carryall_oucamo","B_FieldPack_blk","B_FieldPack_cbr","B_FieldPack_ocamo","B_FieldPack_oucamo","B_HuntingBackpack","B_Kitbag_cbr","B_Kitbag_mcamo","B_Kitbag_sgg","B_OutdoorPack_blk","B_OutdoorPack_blu","B_OutdoorPack_tan","B_TacticalPack_blk","B_TacticalPack_mcamo","B_TacticalPack_ocamo","B_TacticalPack_oli","B_TacticalPack_rgr"]],
	["A3XAI_vestTypes0",["V_Press_F","V_Rangemaster_belt","V_TacVest_blk","V_TacVest_blk_POLICE","V_TacVest_brn","V_TacVest_camo","V_TacVest_khk","V_TacVest_oli","V_TacVestCamo_khk","V_TacVestIR_blk","V_I_G_resistanceLeader_F","V_BandollierB_blk","V_BandollierB_cbr","V_BandollierB_khk","V_BandollierB_oli","V_BandollierB_rgr","V_Chestrig_blk","V_Chestrig_khk","V_Chestrig_oli","V_Chestrig_rgr","V_HarnessO_brn","V_HarnessO_gry","V_HarnessOGL_brn","V_HarnessOGL_gry","V_HarnessOSpec_brn","V_HarnessOSpec_gry","V_PlateCarrier1_blk","V_PlateCarrier1_rgr","V_PlateCarrier2_rgr","V_PlateCarrier3_rgr","V_PlateCarrierGL_blk","V_PlateCarrierGL_mtp","V_PlateCarrierGL_rgr","V_PlateCarrierH_CTRG","V_PlateCarrierIA1_dgtl","V_PlateCarrierIA2_dgtl","V_PlateCarrierIAGL_dgtl","V_PlateCarrierIAGL_oli","V_PlateCarrierL_CTRG","V_PlateCarrierSpec_blk","V_PlateCarrierSpec_mtp","V_PlateCarrierSpec_rgr"]],
	["A3XAI_vestTypes1",["V_Press_F","V_Rangemaster_belt","V_TacVest_blk","V_TacVest_blk_POLICE","V_TacVest_brn","V_TacVest_camo","V_TacVest_khk","V_TacVest_oli","V_TacVestCamo_khk","V_TacVestIR_blk","V_I_G_resistanceLeader_F","V_BandollierB_blk","V_BandollierB_cbr","V_BandollierB_khk","V_BandollierB_oli","V_BandollierB_rgr","V_Chestrig_blk","V_Chestrig_khk","V_Chestrig_oli","V_Chestrig_rgr","V_HarnessO_brn","V_HarnessO_gry","V_HarnessOGL_brn","V_HarnessOGL_gry","V_HarnessOSpec_brn","V_HarnessOSpec_gry","V_PlateCarrier1_blk","V_PlateCarrier1_rgr","V_PlateCarrier2_rgr","V_PlateCarrier3_rgr","V_PlateCarrierGL_blk","V_PlateCarrierGL_mtp","V_PlateCarrierGL_rgr","V_PlateCarrierH_CTRG","V_PlateCarrierIA1_dgtl","V_PlateCarrierIA2_dgtl","V_PlateCarrierIAGL_dgtl","V_PlateCarrierIAGL_oli","V_PlateCarrierL_CTRG","V_PlateCarrierSpec_blk","V_PlateCarrierSpec_mtp","V_PlateCarrierSpec_rgr"]],
	["A3XAI_vestTypes2",["V_Press_F","V_Rangemaster_belt","V_TacVest_blk","V_TacVest_blk_POLICE","V_TacVest_brn","V_TacVest_camo","V_TacVest_khk","V_TacVest_oli","V_TacVestCamo_khk","V_TacVestIR_blk","V_I_G_resistanceLeader_F","V_BandollierB_blk","V_BandollierB_cbr","V_BandollierB_khk","V_BandollierB_oli","V_BandollierB_rgr","V_Chestrig_blk","V_Chestrig_khk","V_Chestrig_oli","V_Chestrig_rgr","V_HarnessO_brn","V_HarnessO_gry","V_HarnessOGL_brn","V_HarnessOGL_gry","V_HarnessOSpec_brn","V_HarnessOSpec_gry","V_PlateCarrier1_blk","V_PlateCarrier1_rgr","V_PlateCarrier2_rgr","V_PlateCarrier3_rgr","V_PlateCarrierGL_blk","V_PlateCarrierGL_mtp","V_PlateCarrierGL_rgr","V_PlateCarrierH_CTRG","V_PlateCarrierIA1_dgtl","V_PlateCarrierIA2_dgtl","V_PlateCarrierIAGL_dgtl","V_PlateCarrierIAGL_oli","V_PlateCarrierL_CTRG","V_PlateCarrierSpec_blk","V_PlateCarrierSpec_mtp","V_PlateCarrierSpec_rgr"]],
	["A3XAI_vestTypes3",["V_Press_F","V_Rangemaster_belt","V_TacVest_blk","V_TacVest_blk_POLICE","V_TacVest_brn","V_TacVest_camo","V_TacVest_khk","V_TacVest_oli","V_TacVestCamo_khk","V_TacVestIR_blk","V_I_G_resistanceLeader_F","V_BandollierB_blk","V_BandollierB_cbr","V_BandollierB_khk","V_BandollierB_oli","V_BandollierB_rgr","V_Chestrig_blk","V_Chestrig_khk","V_Chestrig_oli","V_Chestrig_rgr","V_HarnessO_brn","V_HarnessO_gry","V_HarnessOGL_brn","V_HarnessOGL_gry","V_HarnessOSpec_brn","V_HarnessOSpec_gry","V_PlateCarrier1_blk","V_PlateCarrier1_rgr","V_PlateCarrier2_rgr","V_PlateCarrier3_rgr","V_PlateCarrierGL_blk","V_PlateCarrierGL_mtp","V_PlateCarrierGL_rgr","V_PlateCarrierH_CTRG","V_PlateCarrierIA1_dgtl","V_PlateCarrierIA2_dgtl","V_PlateCarrierIAGL_dgtl","V_PlateCarrierIAGL_oli","V_PlateCarrierL_CTRG","V_PlateCarrierSpec_blk","V_PlateCarrierSpec_mtp","V_PlateCarrierSpec_rgr"]],
	["A3XAI_headgearTypes0",["H_Cap_blk","H_Cap_blk_Raven","H_Cap_blu","H_Cap_brn_SPECOPS","H_Cap_grn","H_Cap_headphones","H_Cap_khaki_specops_UK","H_Cap_oli","H_Cap_press","H_Cap_red","H_Cap_tan","H_Cap_tan_specops_US","H_Watchcap_blk","H_Watchcap_camo","H_Watchcap_khk","H_Watchcap_sgg","H_MilCap_blue","H_MilCap_dgtl","H_MilCap_mcamo","H_MilCap_ocamo","H_MilCap_oucamo","H_MilCap_rucamo","H_Bandanna_camo","H_Bandanna_cbr","H_Bandanna_gry","H_Bandanna_khk","H_Bandanna_khk_hs","H_Bandanna_mcamo","H_Bandanna_sgg","H_Bandanna_surfer","H_Booniehat_dgtl","H_Booniehat_dirty","H_Booniehat_grn","H_Booniehat_indp","H_Booniehat_khk","H_Booniehat_khk_hs","H_Booniehat_mcamo","H_Booniehat_tan","H_Hat_blue","H_Hat_brown","H_Hat_camo","H_Hat_checker","H_Hat_grey","H_Hat_tan","H_StrawHat","H_StrawHat_dark","H_Beret_02","H_Beret_blk","H_Beret_blk_POLICE","H_Beret_brn_SF","H_Beret_Colonel","H_Beret_grn","H_Beret_grn_SF","H_Beret_ocamo","H_Beret_red","H_Shemag_khk","H_Shemag_olive","H_Shemag_olive_hs"]],
	["A3XAI_headgearTypes1",["H_Cap_blk","H_Cap_blk_Raven","H_Cap_blu","H_Cap_brn_SPECOPS","H_Cap_grn","H_Cap_headphones","H_Cap_khaki_specops_UK","H_Cap_oli","H_Cap_press","H_Cap_red","H_Cap_tan","H_Cap_tan_specops_US","H_Watchcap_blk","H_Watchcap_camo","H_Watchcap_khk","H_Watchcap_sgg","H_MilCap_blue","H_MilCap_dgtl","H_MilCap_mcamo","H_MilCap_ocamo","H_MilCap_oucamo","H_MilCap_rucamo","H_Bandanna_camo","H_Bandanna_cbr","H_Bandanna_gry","H_Bandanna_khk","H_Bandanna_khk_hs","H_Bandanna_mcamo","H_Bandanna_sgg","H_Bandanna_surfer","H_Booniehat_dgtl","H_Booniehat_dirty","H_Booniehat_grn","H_Booniehat_indp","H_Booniehat_khk","H_Booniehat_khk_hs","H_Booniehat_mcamo","H_Booniehat_tan","H_Hat_blue","H_Hat_brown","H_Hat_camo","H_Hat_checker","H_Hat_grey","H_Hat_tan","H_StrawHat","H_StrawHat_dark","H_Beret_02","H_Beret_blk","H_Beret_blk_POLICE","H_Beret_brn_SF","H_Beret_Colonel","H_Beret_grn","H_Beret_grn_SF","H_Beret_ocamo","H_Beret_red","H_Shemag_khk","H_Shemag_olive","H_Shemag_olive_hs"]],
	["A3XAI_headgearTypes2",["H_Cap_blk","H_Cap_blk_Raven","H_Cap_blu","H_Cap_brn_SPECOPS","H_Cap_grn","H_Cap_headphones","H_Cap_khaki_specops_UK","H_Cap_oli","H_Cap_press","H_Cap_red","H_Cap_tan","H_Cap_tan_specops_US","H_Watchcap_blk","H_Watchcap_camo","H_Watchcap_khk","H_Watchcap_sgg","H_MilCap_blue","H_MilCap_dgtl","H_MilCap_mcamo","H_MilCap_ocamo","H_MilCap_oucamo","H_MilCap_rucamo","H_Bandanna_camo","H_Bandanna_cbr","H_Bandanna_gry","H_Bandanna_khk","H_Bandanna_khk_hs","H_Bandanna_mcamo","H_Bandanna_sgg","H_Bandanna_surfer","H_Booniehat_dgtl","H_Booniehat_dirty","H_Booniehat_grn","H_Booniehat_indp","H_Booniehat_khk","H_Booniehat_khk_hs","H_Booniehat_mcamo","H_Booniehat_tan","H_Hat_blue","H_Hat_brown","H_Hat_camo","H_Hat_checker","H_Hat_grey","H_Hat_tan","H_StrawHat","H_StrawHat_dark","H_Beret_02","H_Beret_blk","H_Beret_blk_POLICE","H_Beret_brn_SF","H_Beret_Colonel","H_Beret_grn","H_Beret_grn_SF","H_Beret_ocamo","H_Beret_red","H_Shemag_khk","H_Shemag_olive","H_Shemag_olive_hs"]],
	["A3XAI_headgearTypes3",["H_Cap_blk","H_Cap_blk_Raven","H_Cap_blu","H_Cap_brn_SPECOPS","H_Cap_grn","H_Cap_headphones","H_Cap_khaki_specops_UK","H_Cap_oli","H_Cap_press","H_Cap_red","H_Cap_tan","H_Cap_tan_specops_US","H_Watchcap_blk","H_Watchcap_camo","H_Watchcap_khk","H_Watchcap_sgg","H_MilCap_blue","H_MilCap_dgtl","H_MilCap_mcamo","H_MilCap_ocamo","H_MilCap_oucamo","H_MilCap_rucamo","H_Bandanna_camo","H_Bandanna_cbr","H_Bandanna_gry","H_Bandanna_khk","H_Bandanna_khk_hs","H_Bandanna_mcamo","H_Bandanna_sgg","H_Bandanna_surfer","H_Booniehat_dgtl","H_Booniehat_dirty","H_Booniehat_grn","H_Booniehat_indp","H_Booniehat_khk","H_Booniehat_khk_hs","H_Booniehat_mcamo","H_Booniehat_tan","H_Hat_blue","H_Hat_brown","H_Hat_camo","H_Hat_checker","H_Hat_grey","H_Hat_tan","H_StrawHat","H_StrawHat_dark","H_Beret_02","H_Beret_blk","H_Beret_blk_POLICE","H_Beret_brn_SF","H_Beret_Colonel","H_Beret_grn","H_Beret_grn_SF","H_Beret_ocamo","H_Beret_red","H_Shemag_khk","H_Shemag_olive","H_Shemag_olive_hs"]],
	["A3XAI_foodLoot",["Exile_Item_GloriousKnakworst","Exile_Item_SausageGravy","Exile_Item_ChristmasTinner","Exile_Item_BBQSandwich","Exile_Item_Surstromming","Exile_Item_Catfood","Exile_Item_PlasticBottleFreshWater","Exile_Item_Beer","Exile_Item_Energydrink"]],
	["A3XAI_MiscLoot",["Exile_Item_Rope","Exile_Item_DuctTape","Exile_Item_ExtensionCord","Exile_Item_FuelCanisterEmpty","Exile_Item_JunkMetal","Exile_Item_LightBulb","Exile_Item_MetalBoard","Exile_Item_MetalPole","Exile_Item_SafeKit","Exile_Item_CamoTentKit","Exile_Item_CodeLock","Exile_Item_InstaDoc"]],
	["A3XAI_tools0",[["Exile_Item_XM8",0.90],["ItemCompass",0.50],["ItemMap",0.50],["ItemGPS",0.05],["ItemRadio",0.05]]],
	["A3XAI_tools1",[["Exile_Item_XM8",0.90],["ItemCompass",0.60],["ItemMap",0.60],["ItemGPS",0.10],["ItemRadio",0.10]]],
	["A3XAI_tools2",[["Exile_Item_XM8",0.90],["ItemCompass",0.70],["ItemMap",0.70],["ItemGPS",0.15],["ItemRadio",0.15]]],
	["A3XAI_tools3",[["Exile_Item_XM8",0.90],["ItemCompass",0.80],["ItemMap",0.80],["ItemGPS",0.20],["ItemRadio",0.20]]],
	["A3XAI_gadgets0",[["binocular",0.40],["NVGoggles",0.05]]],
	["A3XAI_gadgets1",[["binocular",0.50],["NVGoggles",0.10]]],
	["A3XAI_gadgets2",[["binocular",0.60],["NVGoggles",0.15]]],
	["A3XAI_gadgets3",[["binocular",0.70],["NVGoggles",0.20]]]
];

if (A3XAI_verifySettings) then {
	if !(A3XAI_minAI_capitalCity in [0,1,2,3,4,5]) then {diag_log format ["[A3XAI] Error found in variable A3XAI_minAI_capitalCity, resetting to default value."]; A3XAI_minAI_capitalCity = 2};
	if !(A3XAI_addAI_capitalCity in [0,1,2,3,4,5]) then {diag_log format ["[A3XAI] Error found in variable A3XAI_addAI_capitalCity, resetting to default value."]; A3XAI_addAI_capitalCity = 1};
	if !(A3XAI_unitLevel_capitalCity in [0,1,2,3]) then {diag_log format ["[A3XAI] Error found in variable A3XAI_unitLevel_capitalCity, resetting to default value."]; A3XAI_unitLevel_capitalCity = 1};
	if !(A3XAI_minAI_city in [0,1,2,3,4,5]) then {diag_log format ["[A3XAI] Error found in variable A3XAI_minAI_city, resetting to default value."]; A3XAI_minAI_city = 1};
	if !(A3XAI_addAI_city in [0,1,2,3,4,5]) then {diag_log format ["[A3XAI] Error found in variable A3XAI_addAI_city, resetting to default value."]; A3XAI_addAI_city = 2};
	if !(A3XAI_unitLevel_city in [0,1,2,3]) then {diag_log format ["[A3XAI] Error found in variable A3XAI_unitLevel_city, resetting to default value."]; A3XAI_unitLevel_city = 1};
	if !(A3XAI_minAI_village in [0,1,2,3,4,5]) then {diag_log format ["[A3XAI] Error found in variable A3XAI_minAI_village, resetting to default value."]; A3XAI_minAI_village = 1};
	if !(A3XAI_addAI_village in [0,1,2,3,4,5]) then {diag_log format ["[A3XAI] Error found in variable A3XAI_addAI_village, resetting to default value."]; A3XAI_addAI_village = 1};
	if !(A3XAI_unitLevel_village in [0,1,2,3]) then {diag_log format ["[A3XAI] Error found in variable A3XAI_unitLevel_village, resetting to default value."]; A3XAI_unitLevel_village = 0};
	if !(A3XAI_minAI_remoteArea in [0,1,2,3,4,5]) then {diag_log format ["[A3XAI] Error found in variable A3XAI_minAI_remoteArea, resetting to default value."]; A3XAI_minAI_remoteArea = 1};
	if !(A3XAI_addAI_remoteArea in [0,1,2,3,4,5]) then {diag_log format ["[A3XAI] Error found in variable A3XAI_unitLevel_remoteArea, resetting to default value."]; A3XAI_addAI_remoteArea = 1};
	if !(A3XAI_unitLevel_remoteArea in [0,1,2,3]) then {diag_log format ["[A3XAI] Error found in variable A3XAI_unitLevel_remoteArea, resetting to default value."]; A3XAI_unitLevel_remoteArea = 2};
	if !(A3XAI_minAI_wilderness in [0,1,2,3,4,5]) then {diag_log format ["[A3XAI] Error found in variable A3XAI_minAI_remoteArea, resetting to default value."]; A3XAI_minAI_wilderness = 1};
	if !(A3XAI_addAI_wilderness in [0,1,2,3,4,5]) then {diag_log format ["[A3XAI] Error found in variable A3XAI_unitLevel_remoteArea, resetting to default value."]; A3XAI_addAI_wilderness = 1};
	if !(A3XAI_unitLevel_wilderness in [0,1,2,3]) then {diag_log format ["[A3XAI] Error found in variable A3XAI_unitLevel_remoteArea, resetting to default value."]; A3XAI_unitLevel_wilderness = 2};
	if !((count A3XAI_levelChancesAir) isEqualTo 4) then {diag_log format ["[A3XAI] Error found in variable A3XAI_levelChancesAir, resetting to default value."]; A3XAI_levelChancesAir = [0.00,0.50,0.35,0.15]};
	if !((count A3XAI_levelChancesLand) isEqualTo 4) then {diag_log format ["[A3XAI] Error found in variable A3XAI_levelChancesLand, resetting to default value."]; A3XAI_levelChancesAir = [0.00,0.50,0.35,0.15]};
	if !((count A3XAI_useWeaponChance0) isEqualTo 4) then {diag_log format ["[A3XAI] Error found in variable A3XAI_useWeaponChance0, resetting to default value."]; A3XAI_useWeaponChance0 = [0.20,0.80,0.00,0.00]};
	if !((count A3XAI_useWeaponChance1) isEqualTo 4) then {diag_log format ["[A3XAI] Error found in variable A3XAI_useWeaponChance1, resetting to default value."]; A3XAI_useWeaponChance1 = [0.00,0.90,0.05,0.05]};
	if !((count A3XAI_useWeaponChance2) isEqualTo 4) then {diag_log format ["[A3XAI] Error found in variable A3XAI_useWeaponChance2, resetting to default value."]; A3XAI_useWeaponChance2 = [0.00,0.80,0.10,0.10]};
	if !((count A3XAI_useWeaponChance3) isEqualTo 4) then {diag_log format ["[A3XAI] Error found in variable A3XAI_useWeaponChance3, resetting to default value."]; A3XAI_useWeaponChance3 = [0.00,0.70,0.15,0.15]};
	if ("air_reinforce" in A3XAI_airReinforcementAllowedTypes) then {A3XAI_airReinforcementAllowedTypes = A3XAI_airReinforcementAllowedTypes - ["air_reinforce"]};
	if ("uav" in A3XAI_airReinforcementAllowedTypes) then {A3XAI_airReinforcementAllowedTypes = A3XAI_airReinforcementAllowedTypes - ["uav"]};
	if ("ugv" in A3XAI_airReinforcementAllowedTypes) then {A3XAI_airReinforcementAllowedTypes = A3XAI_airReinforcementAllowedTypes - ["ugv"]};
};

diag_log format ["[A3XAI] Verified all A3XAI settings in %1 seconds.",(diag_tickTime - _startTime)];
