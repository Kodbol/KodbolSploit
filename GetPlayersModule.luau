local GetPlayersModule = {}

function GetPlayersModule.GetPlayers()
     for _, player in game.Players:GetDescendants() do
         return player
   end
end

return GetPlayersModule
