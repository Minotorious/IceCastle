--[[---------------------------------------------------------------------------\
| ||\\    //||       /|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯\ |
| || \\  // ||  (o_ / |                     MAIN MOD FILE                    | |
| ||  \\//  ||  //\/  |                         ----                         | |
| ||   \/   ||  V_/_  |                      ICE CASTLE                      | |
| ||        ||        |‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗/ |
\---------------------------------------------------------------------------]]--

local iceCastle = foundation.createMod();

if foundation.isModLoaded("066c4617-3a38-4d64-88fa-4863d9cc7d31") then -- Winter Wonderland ID
    return
end

--[[---------------------------- GENERAL MATERIALS ----------------------------]]--

--[[------------------------------ MAIN MONUMENT ------------------------------]]--

iceCastle:register({
	DataType = "BUILDING",
    Id = "ICE_CASTLE_MONUMENT",
    Name = "ICE_CASTLE_MONUMENT_NAME",
	Description = "ICE_CASTLE_MONUMENT_DESC",
    BuildingType = "MONUMENT",
	AssetCoreBuildingPart = "BUILDING_PART_MONUMENT_POLE",
    BuildingPartSetList = {
        {
            Name = "ICE_CASTLE_TOWERS_CATEGORY",
            BuildingPartList = {
                "RAMPART_TOWER_SQUARE_MEDIUM_SCALABLE_PART"
            }
		},
        {
            Name = "ICE_CASTLE_RAMPART_PATHS_CATEGORY",
            BuildingPartList = {
                "RAMPART_PATH_STRAIGHT_SCALABLE_PART", "RAMPART_PATH_STRAIGHT_HALF_SCALABLE_PART", "RAMPART_PATH_CORNER_45_SHARP_SCALABLE_PART",
                "RAMPART_PATH_CORNER_60_SHARP_SCALABLE_PART", "RAMPART_PATH_CORNER_90_SHARP_SCALABLE_PART", "RAMPART_PATH_CORNER_90_SHARP_HALF_SCALABLE_PART",
                "RAMPART_PATH_CORNER_120_SHARP_SCALABLE_PART", "RAMPART_PATH_CORNER_135_SHARP_SCALABLE_PART", "RAMPART_PATH_CROSS_JUNCTION_SHARP_SCALABLE_PART",
                "RAMPART_PATH_T_JUNCTION_SHARP_SCALABLE_PART"
            }
		},
        {
            Name = "ICE_CASTLE_DECORATIVES_CATEGORY",
            BuildingPartList = {
                "CRENELLATION_SPIKES_PART", "WALL_SPIKES_PART"
            }
		}
    }
})

--[[------------------------------- MAIN EVENT --------------------------------]]--



--[[-------------------------------- DO FILES ---------------------------------]]--

iceCastle:dofile("scripts/iceCastle.lua")