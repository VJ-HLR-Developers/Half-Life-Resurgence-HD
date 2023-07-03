AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2023 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/vj_hlr/opfor_hd/hgrunt_medic.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want

ENT.IsMedicSNPC = true -- Is this SNPC a medic? Does it heal other friendly friendly SNPCs, and players(If friendly)

-- Custom
ENT.HECU_Type = 2
ENT.HECU_WepBG = 3
ENT.AnimTbl_WeaponReload = {ACT_RELOAD_SMG1}
ENT.HECUMedic_HealBG = 0
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:HECU_CustomOnInitialize()
	-- Medic bodygroup starts from 2
	self:SetBodygroup(1,math.random(0,1))
	-- self:SetBodygroup(2,math.random(0,1))
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnMedic_BeforeHeal()
	-- print(self:GetBodygroup(3))
	self.HECUMedic_HealBG = self:GetBodygroup(2)
	timer.Simple(0.8,function()
		if IsValid(self) then
			self:SetBodygroup(2,3)
		end
	end)
	timer.Simple(1.9,function()
		if IsValid(self) then
			self:SetBodygroup(2,2)
		end
	end)
	self:VJ_ACT_PLAYACTIVITY("pull_needle",true,VJ.AnimDuration(self,"pull_needle") + 0.1,false,0,{},function(vsched)
		vsched.RunCode_OnFinish = function()
			self:VJ_ACT_PLAYACTIVITY("give_shot",true,VJ.AnimDuration(self,"give_shot") + 0.1,false,0,{},function(vsched)
				vsched.RunCode_OnFinish = function()
					self:VJ_ACT_PLAYACTIVITY("store_needle",true,false)
				end
			end)
		end
	end)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnMedic_OnReset()
	timer.Simple(0.85,function() if IsValid(self) then self:SetBodygroup(2,3) end end)
	timer.Simple(1.7,function() if IsValid(self) then self:SetBodygroup(2,self.HECUMedic_HealBG) end end)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnDeath_BeforeCorpseSpawned(dmginfo,hitgroup)
	self:SetBodygroup(2,3)
end