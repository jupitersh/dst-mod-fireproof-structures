if not GLOBAL.TheNet:GetIsServer() then	
	return
end

local fireproof_list = {
	--LIGHT
		"mushroom_light",
		"mushroom_light2",
	--STRUCTURES
		"treasurechest",
		"homesign",
		--"arrowsign_post",
		"minisign",
		"fence_gate",
		"fence",
		--"wall_hay"
		"wall_wood",
		"wardrobe",
		"pighouse",
		"rabbithouse",
		"scarecrow",
		--"winter_treestand",
		"perdshrine",
		"wargshrine",
		"pigshrine",
		"endtable",
	--FARM
		"slow_farmplot",
		"fast_farmplot",
		"mushroom_farm",
		"beebox",
		"meatrack",
		"cookpot",
		"portablecookpot",
		"portableblender",
		"portablespicer",
	--SURVIVAL
		"tent",
		"siestahut",
	--TOOLS
		"saltlick",
	--SCIENCE
		"researchlab",
		"researchlab2",
		"seafaring_prototyper",
		"cartographydesk",
		"sculptingtable",
		"winterometer",
		"rainometer",
	--MAGIC
		"researchlab3",
		"researchlab4",
		"resurrectionstatue",
		"sentryward",
}

local fireproof_plant_list = {
	"grass",
	"sapling",
	"berrybush",
	"berrybush2",
	"berrybush_juicy",
	"reeds",
	"rock_avocado_bush",
	"moon_tree",
	"sapling_moon",
}

if GetModConfigData("plants_fireproof") then
	for k, v in pairs(fireproof_plant_list) do
		table.insert(fireproof_list, v)
	end
end

for k, v in pairs(fireproof_list) do	
	AddPrefabPostInit(v, function(inst)
		--Remove Burnt Structures
		inst:DoTaskInTime(0, function(inst)
			if inst:HasTag("burnt") then 
				inst:Remove() 
			end
		end)
		--Remove the Component of Burnable
		inst:DoTaskInTime(1, function(inst)
			if inst and inst.components.burnable then
				inst.components.burnable = nil
			end
		end)
	end)
end