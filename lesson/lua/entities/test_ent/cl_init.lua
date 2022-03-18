include('shared.lua')

function ENT:Draw()
    self:DrawModel()
end

concommand.Add( "entity_pos", function( ply )
	local tr = ply:GetEyeTrace()
	if ( IsValid( tr.Entity ) ) then
		print( "Entity position:", tr.Entity:GetPos() )
        print( "Crosshair position:", tr.HitPos )
        print(tr.Entity:GetPos() - tr.HitPos)
	else
		print( "Crosshair position:", tr.HitPos )
	end
end )