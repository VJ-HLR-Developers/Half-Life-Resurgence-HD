include("entities/npc_vj_hlr1_hgrunt/init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")
/*-----------------------------------------------
	*** Copyright (c) 2012-2025 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = "models/vj_hlr/opfor_hd/hgrunt.mdl"
ENT.HasOnPlayerSight = true
ENT.BecomeEnemyToPlayer = 2

/*
Heavy damage:
vj_hlr/gsrc/npc/hgrunt_opf/busted.wav
vj_hlr/gsrc/npc/hgrunt_opf/critical.wav
vj_hlr/gsrc/npc/hgrunt_opf/hitbad.wav
vj_hlr/gsrc/npc/hgrunt_opf/makeit.wav
vj_hlr/gsrc/npc/hgrunt_opf/sdamage.wav

-- Engineer:
vj_hlr/gsrc/npc/hgrunt_opf/locksmith.wav
vj_hlr/gsrc/npc/hgrunt_opf/stand.wav
vj_hlr/gsrc/npc/hgrunt_opf/thick.wav

vj_hlr/gsrc/npc/hgrunt_opf/medic_give_shot.wav
*/
	-- ====== Sounds ====== --
ENT.SoundTbl_Idle = {
	"vj_hlr/gsrc/npc/hgrunt_opf/allclear.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/area.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/babysitting.wav",
	--"vj_hlr/gsrc/npc/hgrunt_opf/bfeeling.wav",
	--"vj_hlr/gsrc/npc/hgrunt_opf/charge.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/checkrecon.wav",
	--"vj_hlr/gsrc/npc/hgrunt_opf/coverup.wav",
	--"vj_hlr/gsrc/npc/hgrunt_opf/current.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/disney.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/dogs.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/frosty.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/guard.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/lost.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/mission.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/nohostiles.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/nomovement.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/now.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/outof.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/secure.wav",
	--"vj_hlr/gsrc/npc/hgrunt_opf/seensquad.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/short.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/stayalert.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/zone.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/check.wav"
}
ENT.SoundTbl_CombatIdle = {
	"vj_hlr/gsrc/npc/hgrunt_opf/ass.wav",
	--"vj_hlr/gsrc/npc/hgrunt_opf/chicken.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/clear.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/corners.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/flank.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/freaks.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/fubar.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/go.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/marines.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/move.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/moveup.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/recon.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/sweep.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/tag.wav"
}
ENT.SoundTbl_IdleDialogue = {
	"vj_hlr/gsrc/npc/hgrunt_opf/seensquad.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/current.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/coverup.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/chicken.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/charge.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/bfeeling.wav"
	
}
ENT.SoundTbl_IdleDialogueAnswer = {
	"vj_hlr/gsrc/npc/hgrunt_opf/yes.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/roger.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/sir.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/no.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/quiet.wav"
}
ENT.SoundTbl_ReceiveOrder = {
	"vj_hlr/gsrc/npc/hgrunt_opf/moving.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/of6a1_fg02.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/right.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/roger.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/sir.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/siryessir.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/yes.wav"
}
ENT.SoundTbl_FollowPlayer = {
	"vj_hlr/gsrc/npc/hgrunt_opf/clear.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/corporal_01.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/damage.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/gotit.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/notfail.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/six.wav"
}
ENT.SoundTbl_UnFollowPlayer = {
	"vj_hlr/gsrc/npc/hgrunt_opf/guardduty.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/orders.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/post.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/scout.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/situations.wav"
}
ENT.SoundTbl_MedicBeforeHeal = {
	"vj_hlr/gsrc/npc/hgrunt_opf/fwound.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/help.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/hurt.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/medical.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/sting.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/of2a5_fg03.wav"
}
ENT.SoundTbl_MedicReceiveHeal = {
	"vj_hlr/gsrc/npc/hgrunt_opf/thanks.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/of2a5_fg04.wav"
}
ENT.SoundTbl_OnPlayerSight = {
	"vj_hlr/gsrc/npc/hgrunt_opf/hellosir.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/shephard.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/sir_01.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/sore.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/tosee.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/feel.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/check.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/of5a1_fg01.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/of5a3_fg01.wav"
}
ENT.SoundTbl_Investigate = {
	"vj_hlr/gsrc/npc/hgrunt_opf/hear.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/hearsome.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/quiet.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/staydown.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/intro_fg17.wav"
}
ENT.SoundTbl_Alert = {
	"vj_hlr/gsrc/npc/hgrunt_opf/bogies.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/hostiles.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/mister.wav"
}
ENT.SoundTbl_CallForHelp = {
	"vj_hlr/gsrc/npc/hgrunt_opf/suppressing.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/backup.wav"
}
ENT.SoundTbl_Suppressing = {
	"vj_hlr/gsrc/npc/hgrunt_opf/covering.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/getsome.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/nothing.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/rapidfire.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/wantsome.wav"
}
ENT.SoundTbl_GrenadeAttack = {
	"vj_hlr/gsrc/npc/hgrunt_opf/fire.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/grenade.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/take.wav"
}
ENT.SoundTbl_GrenadeSight = {
	"vj_hlr/gsrc/npc/hgrunt_opf/cover.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/down.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/grenade.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/hellout.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/incoming.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/retreat.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/takecover.wav"
}
ENT.SoundTbl_KilledEnemy = {
	"vj_hlr/gsrc/npc/hgrunt_opf/killer.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/oneshot.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/sniper.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/talking.wav"
}
ENT.SoundTbl_Pain = {
	"vj_hlr/gsrc/npc/hgrunt_opf/gr_pain1.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/gr_pain2.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/gr_pain3.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/gr_pain4.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/gr_pain5.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/gr_pain6.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/imhit.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/medic.wav"
}
ENT.SoundTbl_DamageByPlayer = {
	"vj_hlr/gsrc/npc/hgrunt_opf/athority.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/checkfire.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/friendly.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/watchfire.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/watchit.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/of2a6_fg02.wav"
}
ENT.SoundTbl_Death = {
	"vj_hlr/gsrc/npc/hgrunt_opf/death1.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/death2.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/death3.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/death4.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/death5.wav",
	"vj_hlr/gsrc/npc/hgrunt_opf/death6.wav"
}
ENT.HECU_Type = 1
ENT.HECU_WepBG = 3
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:HECU_OnInit()
	if self.HECU_Type == 1 then
		self:SetBodygroup(1,math.random(0,7))
		
		local randwep = math.random(1,4)
		if randwep == 1 or randwep == 2 then
			self:SetBodygroup(3,0)
		elseif randwep == 3 then
			self:SetBodygroup(3,1)
		elseif randwep == 4 then
			self:SetBodygroup(3,2)
		end
		
		if self:GetBodygroup(1) == 2 then
			self:SetBodygroup(3,1)
		end
		
		-- Marminen hamar
		if self:GetBodygroup(3) == 0 then
			self:SetBodygroup(2,0) -- Barz zenk
		elseif self:GetBodygroup(3) == 1 then
			self:SetBodygroup(2,3) -- bonebakshen
		elseif self:GetBodygroup(3) == 2 then
			self:SetBodygroup(2,1) -- Medz reshesh
		end
	end
	self.AnimTbl_Run = {ACT_SPRINT}
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:OnThink()
	self:HECU_OnThink()
	-- Veravorvadz kalel
	if self:Health() <= (self:GetMaxHealth() / 2.2) && self.HECU_Type != 6 && self.HECU_Type != 7 then
		self.AnimTbl_Walk = {ACT_WALK_HURT}
		self.AnimTbl_Run = {ACT_RUN_HURT}
		self.AnimTbl_ShootWhileMovingWalk = {ACT_WALK_HURT}
		self.AnimTbl_ShootWhileMovingRun = {ACT_RUN_HURT}
	else
		self.AnimTbl_Walk = {ACT_WALK}
		self.AnimTbl_Run = {ACT_SPRINT}
		self.AnimTbl_ShootWhileMovingWalk = {ACT_WALK}
		self.AnimTbl_ShootWhileMovingRun = {ACT_SPRINT}
	end
	
	local bgroup = self:GetBodygroup(self.HECU_WepBG)
	if self.HGrunt_LastBodyGroup != bgroup then
		self.HGrunt_LastBodyGroup = bgroup
		if self.HECU_Type == 0 then
			if bgroup == 0 then -- MP5
				self:DoChangeWeapon("weapon_vj_hlr1_mp5_hd")
				self.AnimTbl_WeaponAttack = {ACT_RANGE_ATTACK_SMG1}
				self.AnimTbl_WeaponAttackCrouch = {ACT_RANGE_ATTACK_SMG1_LOW}
				self.Weapon_StartingAmmoAmount = 50
			elseif bgroup == 1 then -- Shotgun
				self:DoChangeWeapon("weapon_vj_hlr1_spas12_hd")
				self.AnimTbl_WeaponAttack = {ACT_RANGE_ATTACK_SHOTGUN}
				self.AnimTbl_WeaponAttackCrouch = {ACT_RANGE_ATTACK_SHOTGUN_LOW}
				self.Weapon_StartingAmmoAmount = 8
			end
		elseif self.HECU_Type == 1 then
			if bgroup == 0 then -- MP5
				self:DoChangeWeapon("weapon_vj_hlr1_mp5_hd")
				self.AnimTbl_WeaponAttack = {ACT_RANGE_ATTACK_SMG1}
				self.AnimTbl_WeaponAttackCrouch = {ACT_RANGE_ATTACK_SMG1_LOW}
				self.Weapon_StartingAmmoAmount = 50
			elseif bgroup == 1 then -- Shotgun
				self:DoChangeWeapon("weapon_vj_hlr1_spas12_hd")
				self.AnimTbl_WeaponAttack = {ACT_RANGE_ATTACK_SHOTGUN}
				self.AnimTbl_WeaponAttackCrouch = {ACT_RANGE_ATTACK_SHOTGUN_LOW}
				self.Weapon_StartingAmmoAmount = 8
			elseif bgroup == 2 then -- SAW
				self:DoChangeWeapon("weapon_vj_hlrof_m249")
				self.AnimTbl_WeaponAttack = {ACT_RANGE_ATTACK_AR2}
				self.AnimTbl_WeaponAttackCrouch = {ACT_RANGE_ATTACK_AR2_LOW}
				self.Weapon_StartingAmmoAmount = 50
			end
		elseif self.HECU_Type == 2 then
			if bgroup == 0 then -- Desert Eagle
				self:DoChangeWeapon("weapon_vj_hlrof_desert_eagle")
				self.AnimTbl_WeaponAttack = {ACT_RANGE_ATTACK_PISTOL}
				self.AnimTbl_WeaponAttackCrouch = {ACT_RANGE_ATTACK_PISTOL_LOW}
				self.Weapon_StartingAmmoAmount = 7
			elseif bgroup == 1 then -- Glock 17
				self:DoChangeWeapon("weapon_vj_hlr1_glock17")
				self.AnimTbl_WeaponAttack = {ACT_RANGE_ATTACK_PISTOL}
				self.AnimTbl_WeaponAttackCrouch = {ACT_RANGE_ATTACK_PISTOL_LOW}
				self.Weapon_StartingAmmoAmount = 17
			end
		elseif self.HECU_Type == 3 then
			if bgroup == 0 then -- Desert Eagle
				self:DoChangeWeapon("weapon_vj_hlrof_desert_eagle")
				self.AnimTbl_WeaponAttack = {ACT_RANGE_ATTACK_PISTOL}
				self.AnimTbl_WeaponAttackCrouch = {ACT_RANGE_ATTACK_PISTOL_LOW}
				self.Weapon_StartingAmmoAmount = 7
			end
		elseif self.HECU_Type == 4 then
			if bgroup == 0 then -- MP5
				self:DoChangeWeapon("weapon_vj_hlr1_mp5_hd")
				self.AnimTbl_WeaponAttack = {ACT_RANGE_ATTACK_SMG1}
				self.AnimTbl_WeaponAttackCrouch = {ACT_RANGE_ATTACK_SMG1_LOW}
				self.Weapon_StartingAmmoAmount = 50
			elseif bgroup == 1 then -- M-40A1
				self:DoChangeWeapon("weapon_vj_hlr1_m40a1")
				self.AnimTbl_WeaponAttack = {ACT_RANGE_ATTACK_AR2}
				self.AnimTbl_WeaponAttackCrouch = {ACT_RANGE_ATTACK_AR2_LOW}
				self.Weapon_StartingAmmoAmount = 5
			end
		elseif self.HECU_Type == 5 then
			if bgroup == 0 then -- MP5
				self:DoChangeWeapon("weapon_vj_hlr1_mp5_hd")
				self.AnimTbl_WeaponAttack = {ACT_RANGE_ATTACK_SMG1}
				self.AnimTbl_WeaponAttackCrouch = {ACT_RANGE_ATTACK_SMG1_LOW}
				self.Weapon_StartingAmmoAmount = 50
			elseif bgroup == 1 then -- Shotgun
				self:DoChangeWeapon("weapon_vj_hlr1_spas12_hd")
				self.AnimTbl_WeaponAttack = {ACT_RANGE_ATTACK_SHOTGUN}
				self.AnimTbl_WeaponAttackCrouch = {ACT_RANGE_ATTACK_SHOTGUN_LOW}
				self.Weapon_StartingAmmoAmount = 5
			end
		elseif self.HECU_Type == 6 then
			if bgroup == 0 then -- Colt Carbine
				self:DoChangeWeapon("weapon_vj_hlr1a_coltcarbine")
				self.AnimTbl_WeaponAttack = {ACT_RANGE_ATTACK_SMG1}
				self.AnimTbl_WeaponAttackCrouch = {ACT_RANGE_ATTACK_SMG1}
				self.Weapon_StartingAmmoAmount = 50
			end
		elseif self.HECU_Type == 7 then
			if bgroup == 0 then -- 20mm Cannon
				self:DoChangeWeapon("weapon_vj_hlr1_20mm")
				self.AnimTbl_WeaponAttack = {ACT_RANGE_ATTACK_AR2}
				self.AnimTbl_WeaponAttackCrouch = {ACT_RANGE_ATTACK_AR2}
			end
		end
	end
end