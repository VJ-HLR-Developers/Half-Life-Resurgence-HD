/*--------------------------------------------------
	=============== Autorun File ===============
	*** Copyright (c) 2012-2025 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/
------------------ Addon Information ------------------
local AddonName = "Half-Life Resurgence HD"
local AddonType = "NPC"
-------------------------------------------------------

local VJExists = file.Exists("lua/autorun/vj_base_autorun.lua", "GAME")
if VJExists == true then
	include("autorun/vj_controls.lua")
	
	local spawnCategory = "HL Resurgence: HD"
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
		
	
-- !!!!!! DON'T TOUCH ANYTHING BELOW THIS !!!!!! -------------------------------------------------------------------------------------------------------------------------
	AddCSLuaFile()
	VJ.AddAddonProperty(AddonName, AddonType)
else
	if CLIENT then
		chat.AddText(Color(0, 200, 200), AddonName, 
		Color(0, 255, 0), " was unable to install, you are missing ", 
		Color(255, 100, 0), "VJ Base!")
	end
	
	timer.Simple(1, function()
		if not VJBASE_ERROR_MISSING then
			VJBASE_ERROR_MISSING = true
			if CLIENT then
				// Get rid of old error messages from addons running on older code...
				if VJF && type(VJF) == "Panel" then
					VJF:Close()
				end
				VJF = true
				
				local frame = vgui.Create("DFrame")
				frame:SetSize(600, 160)
				frame:SetPos((ScrW() - frame:GetWide()) / 2, (ScrH() - frame:GetTall()) / 2)
				frame:SetTitle("Error: VJ Base is missing!")
				frame:SetBackgroundBlur(true)
				frame:MakePopup()
	
				local labelTitle = vgui.Create("DLabel", frame)
				labelTitle:SetPos(250, 30)
				labelTitle:SetText("VJ BASE IS MISSING!")
				labelTitle:SetTextColor(Color(255, 128, 128))
				labelTitle:SizeToContents()
				
				local label1 = vgui.Create("DLabel", frame)
				label1:SetPos(170, 50)
				label1:SetText("Garry's Mod was unable to find VJ Base in your files!")
				label1:SizeToContents()
				
				local label2 = vgui.Create("DLabel", frame)
				label2:SetPos(10, 70)
				label2:SetText("You have an addon installed that requires VJ Base but VJ Base is missing. To install VJ Base, click on the link below. Once\n                                                   installed, make sure it is enabled and then restart your game.")
				label2:SizeToContents()
				
				local link = vgui.Create("DLabelURL", frame)
				link:SetSize(300, 20)
				link:SetPos(195, 100)
				link:SetText("VJ_Base_Download_Link_(Steam_Workshop)")
				link:SetURL("https://steamcommunity.com/sharedfiles/filedetails/?id=131759821")
				
				local buttonClose = vgui.Create("DButton", frame)
				buttonClose:SetText("CLOSE")
				buttonClose:SetPos(260, 120)
				buttonClose:SetSize(80, 35)
				buttonClose.DoClick = function()
					frame:Close()
				end
			elseif (SERVER) then
				VJF = true
				timer.Remove("VJBASEMissing")
				timer.Create("VJBASE_ERROR_CONFLICT", 5, 0, function()
					print("VJ Base is missing! Download it from the Steam Workshop! Link: https://steamcommunity.com/sharedfiles/filedetails/?id=131759821")
				end)
			end
		end
	end)
end