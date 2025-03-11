/*--------------------------------------------------
	*** Copyright (c) 2012-2025 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/
VJ.AddPlugin("Half-Life Resurgence HD", "NPC")

local spawnCategory = "HL Resurgence: GoldSrc HD"
	VJ.AddCategoryInfo(spawnCategory, {Icon = "vj_hl/icons/hl1_hd.png"})
		
	-- HECU
	VJ.AddNPC("Human Grunt","npc_vj_hlr1_hgrunt_hd",spawnCategory)
	VJ.AddNPC("Human Sergeant","npc_vj_hlr1_hgrunt_serg_hd",spawnCategory)
		-- Opposing Force
		VJ.AddNPC("Human Grunt","npc_vj_hlrof_hgrunt_hd",spawnCategory)
		VJ.AddNPC("Human Grunt Medic","npc_vj_hlrof_hgrunt_med_hd",spawnCategory)
		VJ.AddNPC("Human Grunt Engineer","npc_vj_hlrof_hgrunt_eng_hd",spawnCategory)
	
	-- Black Ops
	VJ.AddNPC("Black Ops Male Assassin","npc_vj_hlrof_assassin_male_hd",spawnCategory)
	
	-- Black Mesa Personnel
	VJ.AddNPC("Security Guard","npc_vj_hlr1_securityguard_hd",spawnCategory)
	VJ.AddNPC("Scientist","npc_vj_hlr1_scientist_hd",spawnCategory)
		-- Opposing Force
		VJ.AddNPC("Cleansuit Scientist","npc_vj_hlrof_cleansuitsci_hd",spawnCategory)
		VJ.AddNPC("Otis Laurey","npc_vj_hlrof_otis_hd",spawnCategory)		
	-- Xen Creatures
	VJ.AddNPC("Alien Grunt","npc_vj_hlr1_aliengrunt_hd",spawnCategory)
	VJ.AddNPC("Bullsquid","npc_vj_hlr1_bullsquid_hd",spawnCategory)
	VJ.AddNPC("Gargantua","npc_vj_hlr1_garg_hd",spawnCategory)
	VJ.AddNPC("Houndeye","npc_vj_hlr1_houndeye_hd",spawnCategory)
	VJ.AddNPC("Tentacle","npc_vj_hlr1_tentacle_hd",spawnCategory)
	VJ.AddNPC("Alien Slave","npc_vj_hlr1_alienslave_hd",spawnCategory)
		-- Headcrab
		VJ.AddNPC("Headcrab","npc_vj_hlr1_headcrab_hd",spawnCategory)
		VJ.AddNPC("Zombie","npc_vj_hlr1_zombie_hd",spawnCategory)
			-- Opposing Force
			VJ.AddNPC("Zombie Security Guard","npc_vj_hlrof_zombie_sec_hd",spawnCategory)
			VJ.AddNPC("Zombie Soldier","npc_vj_hlrof_zombie_soldier_hd",spawnCategory)
			VJ.AddNPC("Gonome","npc_vj_hlrof_gonome_hd",spawnCategory)
	
	-- Race X
	VJ.AddNPC("Shock Trooper","npc_vj_hlrof_shocktrooper_hd",spawnCategory)

	-- Sven Co-Op
	VJ.AddNPC("Gargantua (Baby)","npc_vj_hlrsv_garg_baby_hd",spawnCategory)