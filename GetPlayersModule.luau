local GetPlayersModule = {}

function GetPlayersModule.GetPlayers()
   local player = nil
   for _, player in game.Players:GetPlayers() do
      print(player.name)
      return player
  end
end


return GetPlayersModule
