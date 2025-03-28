SWEP.Base 						= "weapon_vj_base"
SWEP.PrintName					= "SPAS-12"
SWEP.Author 					= "DrVrej"
SWEP.Contact					= "http://steamcommunity.com/groups/vrejgaming"
SWEP.Category					= "VJ Base"
	-- NPC Settings ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.NPC_NextPrimaryFire 		= false
SWEP.NPC_CustomSpread	 		= 2.5
SWEP.NPC_ReloadSound			= "vj_hlr/hl1hd_weapon/spas12/shotgun_reload.wav"
SWEP.NPC_ExtraFireSound			= "vj_hlr/hl1hd_weapon/spas12/scock1.wav"
SWEP.NPC_ExtraFireSoundTime		= 0.2
SWEP.NPC_CanBePickedUp			= false
	-- Main Settings ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.MadeForNPCsOnly 			= true
-- SWEP.WorldModel					= "models/vj_hlr/weapons/w_shotgun_hd.mdl"
SWEP.WorldModel					= "models/vj_hlr/weapons/w_shotgun_hd.mdl"
SWEP.HoldType 					= "shotgun"
	-- World Model ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.WorldModel_UseCustomPosition = true
SWEP.WorldModel_CustomPositionAngle = Vector(5, 181, 90)
SWEP.WorldModel_CustomPositionOrigin = Vector(-1.5, -19, 0)
SWEP.WorldModel_CustomPositionBone = "Bip01 R Hand"
	-- Primary Fire ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.Primary.Damage				= 5
SWEP.Primary.NumberOfShots		= 5
SWEP.Primary.ClipSize			= 8
SWEP.Primary.Ammo				= "SMG1"
SWEP.Primary.Sound				= {"vj_hlr/hl1hd_weapon/spas12/sbarrel1.wav"}
SWEP.Primary.DistantSound		= {"vj_hlr/hl1hd_weapon/spas12/sbarrel_distant_new.wav"}
SWEP.PrimaryEffects_ShellType 	= "ShotgunShellEject"
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
function SWEP:OnDrawWorldModel()
	return !IsValid(self:GetOwner())
end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:PrimaryAttackEffects(owner)
	local muz = ents.Create("env_sprite")
	muz:SetKeyValue("model", "vj_hl/sprites/muzzleflash2.vmt")
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