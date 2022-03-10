AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2020 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/vj_hlr/hl_hd/babygarg.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	if self.Garg_Type == 0 then -- Adult garg
		self:SetCollisionBounds(Vector(70,70,210), Vector(-70,-70,0))
	elseif self.Garg_Type == 1 then -- Baby garg
		self:SetCollisionBounds(Vector(32,32,105), Vector(-32,-32,0))
	end
	
	self:SetSkin(math.random(1,4) == 1 && 1 or 0)
	
	local glow1 = ents.Create("env_sprite")
	glow1:SetKeyValue("model","vj_hl/sprites/gargeye1.vmt")
	glow1:SetKeyValue("GlowProxySize","2.0") -- Size of the glow to be rendered for visibility testing.
	glow1:SetKeyValue("renderfx","14")
	glow1:SetKeyValue("rendermode","3") -- Set the render mode to "3" (Glow)
	glow1:SetKeyValue("disablereceiveshadows","0") -- Disable receiving shadows
	glow1:SetKeyValue("spawnflags","0")
	glow1:SetParent(self)
	glow1:Fire("SetParentAttachment","eyes")
	glow1:Spawn()
	glow1:Activate()
	self:DeleteOnRemove(glow1)
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2020 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/