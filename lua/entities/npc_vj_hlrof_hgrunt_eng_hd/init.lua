include("entities/npc_vj_hlrof_hgrunt/init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")
/*-----------------------------------------------
	*** Copyright (c) 2012-2025 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = "models/vj_hlr/opfor_hd/hgrunt_engineer.mdl"

-- Custom
ENT.HECU_Type = 3
ENT.HECU_WepBG = 1
ENT.AnimTbl_WeaponReload = {ACT_RELOAD_SMG1}
ENT.HECU_MyTurret = NULL
ENT.HECU_PlacingTurret = false
ENT.HECU_NextTurretT = 0
ENT.HECU_GasTankHit = false
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:OnThinkActive()
	if IsValid(self:GetEnemy()) && self:Visible(self:GetEnemy()) && self.HECU_NextTurretT < CurTime() && self.HECU_PlacingTurret == false && !IsValid(self.HECU_MyTurret) then
		self.HECU_NextTurretT = CurTime() + 30
		self.HECU_PlacingTurret = true
		self:PlayAnim("pull_torch_wgun", true, false, true, 0, {}, function(sched)
			sched.RunCode_OnFinish = function()
				self:PlayAnim("open_floor_grate", true, false, false, 0, {}, function(sched2)
					sched2.RunCode_OnFinish = function()
						self:PlayAnim("store_torch", true, false, false)
					end
				end)
			end
		end)
		timer.Simple(4.5, function()
			if IsValid(self) && IsValid(self:GetEnemy()) && !IsValid(self.HECU_MyTurret) then
				self.HECU_MyTurret = ents.Create("npc_vj_hlr1_sentry")
				self.HECU_MyTurret:SetPos(self:GetPos() + self:GetForward()*50)
				self.HECU_MyTurret:SetAngles(self:GetAngles())
				self.HECU_MyTurret:Spawn()
				self.HECU_MyTurret:Activate()
				self.HECU_MyTurret.VJ_NPC_Class = table.Merge(self.HECU_MyTurret.VJ_NPC_Class, self.VJ_NPC_Class)
				self.HECU_PlacingTurret = false
			end
		end)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:OnDamaged(dmginfo, hitgroup, status)
	if status == "PreDamage" && hitgroup == HITGROUP_GEAR then
		self.HECU_GasTankHit = true
		dmginfo:SetDamage(999999999999)
		dmginfo:SetDamageType(DMG_BLAST)
	end
end