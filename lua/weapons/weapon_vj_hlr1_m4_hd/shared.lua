SWEP.Base 						= "weapon_vj_base"
SWEP.PrintName					= "M4"
SWEP.Author 					= "DrVrej"
SWEP.Contact					= "http://steamcommunity.com/groups/vrejgaming"
SWEP.Category					= "VJ Base"
	-- NPC Settings ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.NPC_NextPrimaryFire 		= false
SWEP.NPC_ReloadSound			= {"vj_hlr/gsrc/wep/mp5/mp_reload.wav"}
SWEP.NPC_CanBePickedUp			= false
SWEP.NPC_HasSecondaryFire = true
SWEP.NPC_SecondaryFireSound = {"vj_hlr/gsrc/wep/mp5/glauncher.wav", "vj_hlr/gsrc/wep/mp5/glauncher2.wav"}
	-- Main Settings ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.MadeForNPCsOnly 			= true
SWEP.WorldModel					= "models/vj_hlr/weapons/w_9mmar_hd.mdl"
SWEP.HoldType 					= "smg"
	-- World Model ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.WorldModel_UseCustomPosition = true
SWEP.WorldModel_CustomPositionAngle = Vector(95, 170, 89)
SWEP.WorldModel_CustomPositionOrigin = Vector(0, -2, 0.5)
SWEP.WorldModel_CustomPositionBone = "Bip01 R Hand"
	-- Primary Fire ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.Primary.Damage				= 5
SWEP.Primary.ClipSize			= 50
SWEP.Primary.Ammo				= "SMG1"
SWEP.Primary.Sound				= {"vj_hlr/hl1hd_weapon/m4/hks1.wav", "vj_hlr/hl1hd_weapon/m4/hks2.wav", "vj_hlr/hl1hd_weapon/m4/hks3.wav"}
SWEP.Primary.DistantSound		= {"vj_hlr/hl1hd_weapon/m4/hks_distant_new.wav"}
SWEP.Primary.TracerType = "VJ_HLR_Tracer"
SWEP.PrimaryEffects_MuzzleFlash = false
SWEP.PrimaryEffects_SpawnShells = false

-- Custom
local validModels = {
	["models/vj_hlr/hl_hd/hgrunt.mdl"] = true,
	["models/vj_hlr/hl_hd/rgrunt.mdl"] = true,
}
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:Init()
	timer.Simple(0.1, function()
		if IsValid(self) && IsValid(self:GetOwner()) && VJ.HLR_Weapon_CheckModel(self, validModels) then
			self.NPC_NextPrimaryFire = false
		end
	end)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:NPC_SecondaryFire()
	local pos = self:GetBulletPos()
	local proj = ents.Create("obj_vj_hlr1_grenade_40mm")
	proj:SetPos(pos)
	proj:SetAngles(self:GetOwner():GetAngles())
	proj:SetOwner(self:GetOwner())
	proj:Spawn()
	proj:Activate()
	local phys = proj:GetPhysicsObject()
	if IsValid(phys) then
		phys:Wake()
		phys:SetVelocity(self:GetOwner():CalculateProjectile("Curve", pos, self:GetOwner():GetEnemy():GetPos() + self:GetOwner():GetEnemy():OBBCenter(), 1000))
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:OnDrawWorldModel()
	return !IsValid(self:GetOwner())
end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:PrimaryAttackEffects(owner)
	local muz = ents.Create("env_sprite")
	muz:SetKeyValue("model", "vj_hl/sprites/muzzleflash1.vmt")
	muz:SetKeyValue("scale", "" .. math.Rand(0.3, 0.5))
	muz:SetKeyValue("GlowProxySize", "2.0") -- Size of the glow to be rendered for visibility testing.
	muz:SetKeyValue("HDRColorScale", "1.0")
	muz:SetKeyValue("renderfx", "14")
	muz:SetKeyValue("rendermode", "3") -- Set the render mode to "3" (Glow)
	muz:SetKeyValue("renderamt", "255") -- Transparency
	muz:SetKeyValue("disablereceiveshadows", "0") -- Disable receiving shadows
	muz:SetKeyValue("framerate", "10.0") -- Rate at which the sprite should animate, if at all.
	muz:SetKeyValue("spawnflags", "0")
	muz:SetParent(self)
	muz:Fire("SetParentAttachment", self.PrimaryEffects_MuzzleAttachment)
	muz:SetAngles(Angle(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100)))
	muz:Spawn()
	muz:Activate()
	muz:Fire("Kill", "", 0.08)
	self.BaseClass.PrimaryAttackEffects(self, owner)
end