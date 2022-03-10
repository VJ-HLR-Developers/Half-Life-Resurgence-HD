/*--------------------------------------------------
	=============== Autorun File ===============
	*** Copyright (c) 2012-2020 by DrVrej, All rights reserved. ***
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
	VJ.AddAddonProperty(AddonName,AddonType)
else
	if (CLIENT) then
		chat.AddText(Color(0,200,200),PublicAddonName,
		Color(0,255,0)," was unable to install, you are missing ",
		Color(255,100,0),"VJ Base!")
	end
	timer.Simple(1,function()
		if not VJF then
			if (CLIENT) then
				VJF = vgui.Create("DFrame")
				VJF:SetTitle("ERROR!")
				VJF:SetSize(790,560)
				VJF:SetPos((ScrW()-VJF:GetWide())/2,(ScrH()-VJF:GetTall())/2)
				VJF:MakePopup()
				VJF.Paint = function()
					draw.RoundedBox(8,0,0,VJF:GetWide(),VJF:GetTall(),Color(200,0,0,150))
				end

				local VJURL = vgui.Create("DHTML",VJF)
				VJURL:SetPos(VJF:GetWide()*0.005, VJF:GetTall()*0.03)
				VJURL:Dock(FILL)
				VJURL:SetAllowLua(true)
				VJURL:OpenURL("https://sites.google.com/site/vrejgaming/vjbasemissing")
			elseif (SERVER) then
				timer.Create("VJBASEMissing",5,0,function() print("VJ Base is Missing! Download it from the workshop!") end)
			end
		end
	end)
end