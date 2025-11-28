local GetPlayersModule = {}

function GetPlayersModule.GetPlayers()
     for _, player in game.Players:GetPlayers() do
         return player
   end
end

return GetPlayersModule
