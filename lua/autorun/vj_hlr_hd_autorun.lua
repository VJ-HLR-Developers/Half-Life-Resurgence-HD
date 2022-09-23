/*--------------------------------------------------
	=============== Autorun File ===============
	*** Copyright (c) 2012-2022 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/
------------------ Addon Information ------------------
local PublicAddonName = "Half-Life Resurgence HD"
local AddonName = "Half-Life Resurgence HD"
local AddonType = "SNPC"
local AutorunFile = "autorun/vj_hlr_hd_autorun.lua"
-------------------------------------------------------

local VJExists = file.Exists("lua/autorun/vj_base_autorun.lua","GAME")
if VJExists == true then
	include('autorun/vj_controls.lua')
	
	local vCat = "HL Resurgence: HD"
	VJ.AddCategoryInfo(vCat, {Icon = "vj_hl/icons/hl1_hd.png"})
		
		-- HECU
		-- VJ.AddNPC("Human Grunt","npc_vj_hlr1_hgrunt_hd",vCat) // Not really needed since we have OpFor
		VJ.AddNPC("Human Sergeant","npc_vj_hlr1_hgrunt_serg_hd",vCat)
			-- Opposing Force
			VJ.AddNPC("Human Grunt","npc_vj_hlrof_hgrunt_hd",vCat)
			VJ.AddNPC("Human Grunt Medic","npc_vj_hlrof_hgrunt_med_hd",vCat)
			VJ.AddNPC("Human Grunt Engineer","npc_vj_hlrof_hgrunt_eng_hd",vCat)
		
		-- Black Ops
		VJ.AddNPC("Black Ops Male Assassin","npc_vj_hlrof_assassin_male_hd",vCat)
		
		-- Black Mesa Personnel
		VJ.AddNPC("Security Guard","npc_vj_hlr1_securityguard_hd",vCat)
		VJ.AddNPC("Scientist","npc_vj_hlr1_scientist_hd",vCat)
			-- Opposing Force
			VJ.AddNPC("Cleansuit Scientist","npc_vj_hlrof_cleansuitsci_hd",vCat)
			VJ.AddNPC("Otis Laurey","npc_vj_hlrof_otis_hd",vCat)		
		-- Xen Creatures
		VJ.AddNPC("Alien Grunt","npc_vj_hlr1_aliengrunt_hd",vCat)
		VJ.AddNPC("Bullsquid","npc_vj_hlr1_bullsquid_hd",vCat)
		VJ.AddNPC("Gargantua","npc_vj_hlr1_garg_hd",vCat)
		VJ.AddNPC("Houndeye","npc_vj_hlr1_houndeye_hd",vCat)
		VJ.AddNPC("Tentacle","npc_vj_hlr1_tentacle_hd",vCat)
		VJ.AddNPC("Alien Slave","npc_vj_hlr1_alienslave_hd",vCat)
			-- Headcrab
			VJ.AddNPC("Headcrab","npc_vj_hlr1_headcrab_hd",vCat)
			VJ.AddNPC("Zombie","npc_vj_hlr1_zombie_hd",vCat)
				-- Opposing Force
				VJ.AddNPC("Zombie Security Guard","npc_vj_hlrof_zombie_sec_hd",vCat)
				VJ.AddNPC("Zombie Soldier","npc_vj_hlrof_zombie_soldier_hd",vCat)
				VJ.AddNPC("Gonome","npc_vj_hlrof_gonome_hd",vCat)
		
		-- Race X
		VJ.AddNPC("Shock Trooper","npc_vj_hlrof_shocktrooper_hd",vCat)

		-- Sven Co-Op
		VJ.AddNPC("Gargantua (Baby)","npc_vj_hlrsv_garg_baby_hd",vCat)
		
	
-- !!!!!! DON'T TOUCH ANYTHING BELOW THIS !!!!!! -------------------------------------------------------------------------------------------------------------------------
	AddCSLuaFile(AutorunFile)
	VJ.AddAddonProperty(AddonName, AddonType)
else
	if CLIENT then
		chat.AddText(Color(0, 200, 200), PublicAddonName, 
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