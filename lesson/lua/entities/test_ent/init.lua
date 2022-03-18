AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
 
include('shared.lua')

local trig = false

function ENT:Initialize()
 
	self:SetModel( "models/props_interiors/VendingMachineSoda01a.mdl" )
	self:PhysicsInit( SOLID_VPHYSICS )
	self:SetMoveType( MOVETYPE_VPHYSICS )
	self:SetSolid( SOLID_VPHYSICS )

	self:SetUseType( SIMPLE_USE ) -- Добавил вот это

    local phys = self:GetPhysicsObject()
end
 
function ENT:Use( activator, caller )
		local Cola = ents.Create("prop_physics")
		if (!IsValid( Cola )) then return end  -- Добавил вот это
		Cola:SetModel("models/props_junk/PopCan01a.mdl")
		Cola:SetPos(self:GetPos() + self:GetForward() * 20 + self:GetRight() * 5 + (self:GetUp() * -25.3 ))  -- Добавил вот это
		Cola:SetAngles(Angle(0, 0, 90))  -- Добавил вот это
		Cola:Spawn()
		ang = Cola:GetAngles()  -- Добавил вот это
		Cola:GetPhysicsObject():SetVelocity( Vector(ang:Forward() * 30) )  -- Добавил вот это
		self:EmitSound("buttons/button4.wav", 60)  -- Добавил вот это
	return
	
end
 
function ENT:Think()
end

