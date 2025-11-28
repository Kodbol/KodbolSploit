local GetPlayersModule = {}

function GetPlayersModule.GetPlayers()
   local player = nil
   for _, player in game.Players:GetPlayers() do
     if not player == game.Players.LocalPlayer then
      print(player.name)
      return player 
     end
  end
end


return GetPlayersModule
