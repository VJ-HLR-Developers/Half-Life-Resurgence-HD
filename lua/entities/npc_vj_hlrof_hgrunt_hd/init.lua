include("entities/npc_vj_hlr1_hgrunt/init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")
/*-----------------------------------------------
	*** Copyright (c) 2012-2023 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = "models/vj_hlr/opfor_hd/hgrunt.mdl" -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.HasOnPlayerSight = true -- Should do something when it sees the enemy? Example: Play a sound
ENT.BecomeEnemyToPlayer = true -- Should the friendly SNPC become enemy towards the player if it's damaged by a player?

/*
Heavy damage:
vj_hlr/hl1_npc/hgrunt_oppf/busted.wav
vj_hlr/hl1_npc/hgrunt_oppf/critical.wav
vj_hlr/hl1_npc/hgrunt_oppf/hitbad.wav
vj_hlr/hl1_npc/hgrunt_oppf/makeit.wav
vj_hlr/hl1_npc/hgrunt_oppf/sdamage.wav

-- Engineer:
vj_hlr/hl1_npc/hgrunt_oppf/locksmith.wav
vj_hlr/hl1_npc/hgrunt_oppf/stand.wav
vj_hlr/hl1_npc/hgrunt_oppf/thick.wav

vj_hlr/hl1_npc/hgrunt_oppf/medic_give_shot.wav
*/
	-- ====== Sounds ====== --
ENT.SoundTbl_Idle = {
	"vj_hlr/hl1_npc/hgrunt_oppf/allclear.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/area.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/babysitting.wav",
	--"vj_hlr/hl1_npc/hgrunt_oppf/bfeeling.wav",
	--"vj_hlr/hl1_npc/hgrunt_oppf/charge.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/checkrecon.wav",
	--"vj_hlr/hl1_npc/hgrunt_oppf/coverup.wav",
	--"vj_hlr/hl1_npc/hgrunt_oppf/current.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/disney.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/dogs.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/frosty.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/guard.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/lost.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/mission.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/nohostiles.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/nomovement.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/now.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/outof.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/secure.wav",
	--"vj_hlr/hl1_npc/hgrunt_oppf/seensquad.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/short.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/stayalert.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/zone.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/check.wav"
}
ENT.SoundTbl_CombatIdle = {
	"vj_hlr/hl1_npc/hgrunt_oppf/ass.wav",
	--"vj_hlr/hl1_npc/hgrunt_oppf/chicken.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/clear.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/corners.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/flank.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/freaks.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/fubar.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/go.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/marines.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/move.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/moveup.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/recon.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/sweep.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/tag.wav"
}
ENT.SoundTbl_IdleDialogue = {
	"vj_hlr/hl1_npc/hgrunt_oppf/seensquad.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/current.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/coverup.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/chicken.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/charge.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/bfeeling.wav"
	
}
ENT.SoundTbl_IdleDialogueAnswer = {
	"vj_hlr/hl1_npc/hgrunt_oppf/yes.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/roger.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/sir.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/no.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/quiet.wav"
}
ENT.SoundTbl_OnReceiveOrder = {
	"vj_hlr/hl1_npc/hgrunt_oppf/moving.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/of6a1_fg02.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/right.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/roger.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/sir.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/siryessir.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/yes.wav"
}
ENT.SoundTbl_FollowPlayer = {
	"vj_hlr/hl1_npc/hgrunt_oppf/clear.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/corporal_01.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/damage.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/gotit.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/notfail.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/six.wav"
}
ENT.SoundTbl_UnFollowPlayer = {
	"vj_hlr/hl1_npc/hgrunt_oppf/guardduty.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/orders.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/post.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/scout.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/situations.wav"
}
ENT.SoundTbl_MedicBeforeHeal = {
	"vj_hlr/hl1_npc/hgrunt_oppf/fwound.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/help.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/hurt.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/medical.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/sting.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/of2a5_fg03.wav"
}
ENT.SoundTbl_MedicReceiveHeal = {
	"vj_hlr/hl1_npc/hgrunt_oppf/thanks.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/of2a5_fg04.wav"
}
ENT.SoundTbl_OnPlayerSight = {
	"vj_hlr/hl1_npc/hgrunt_oppf/hellosir.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/shephard.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/sir_01.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/sore.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/tosee.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/feel.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/check.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/of5a1_fg01.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/of5a3_fg01.wav"
}
ENT.SoundTbl_Investigate = {
	"vj_hlr/hl1_npc/hgrunt_oppf/hear.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/hearsome.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/quiet.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/staydown.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/intro_fg17.wav"
}
ENT.SoundTbl_Alert = {
	"vj_hlr/hl1_npc/hgrunt_oppf/bogies.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/hostiles.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/mister.wav"
}
ENT.SoundTbl_CallForHelp = {
	"vj_hlr/hl1_npc/hgrunt_oppf/suppressing.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/backup.wav"
}
ENT.SoundTbl_Suppressing = {
	"vj_hlr/hl1_npc/hgrunt_oppf/covering.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/getsome.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/nothing.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/rapidfire.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/wantsome.wav"
}
ENT.SoundTbl_GrenadeAttack = {
	"vj_hlr/hl1_npc/hgrunt_oppf/fire.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/grenade.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/take.wav"
}
ENT.SoundTbl_OnGrenadeSight = {
	"vj_hlr/hl1_npc/hgrunt_oppf/cover.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/down.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/grenade.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/hellout.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/incoming.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/retreat.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/takecover.wav"
}
ENT.SoundTbl_OnKilledEnemy = {
	"vj_hlr/hl1_npc/hgrunt_oppf/killer.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/oneshot.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/sniper.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/talking.wav"
}
ENT.SoundTbl_Pain = {
	"vj_hlr/hl1_npc/hgrunt_oppf/gr_pain1.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/gr_pain2.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/gr_pain3.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/gr_pain4.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/gr_pain5.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/gr_pain6.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/imhit.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/medic.wav"
}
ENT.SoundTbl_DamageByPlayer = {
	"vj_hlr/hl1_npc/hgrunt_oppf/athority.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/checkfire.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/friendly.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/watchfire.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/watchit.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/of2a6_fg02.wav"
}
ENT.SoundTbl_Death = {
	"vj_hlr/hl1_npc/hgrunt_oppf/death1.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/death2.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/death3.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/death4.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/death5.wav",
	"vj_hlr/hl1_npc/hgrunt_oppf/death6.wav"
}
ENT.HECU_Type = 1
ENT.HECU_WepBG = 3
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:HECU_CustomOnInitialize()
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
function ENT:CustomOnThink()
	self:HECU_CustomOnThink()
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