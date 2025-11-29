local SLSModule = {}

function SLSModule.FalseGoalHitbox()
                for _, player in game.Players:GetPlayers() do
                if player.Team  ~= game.Players.LocalPlayer.Team and player.Team ~= nil then
                local enemyTeam = player.Team
                game.Workspace.Stadium.Teams[tostring(enemyTeam)].Goal.Hitbox.Size = Vector3.new(31.327247619628906, 11.277809143066406, 8.289474487304688)
        end
    end
end

function SLSModule.TrueAutoFarm()
                for _, player in game.Players:GetPlayers() do
                if player.Team  ~= game.Players.LocalPlayer.Team and player.Team ~= nil then
                    local enemyTeam = player.Team
                    game.Workspace.Stadium.Teams[tostring(enemyTeam)].Goal.Hitbox.Size = Vector3.new(800,50,800)
    task.wait(0.20)                    
    local args = {
	"ShotActivated",
	workspace:WaitForChild("Misc"):WaitForChild("Football"),
	vector.create(85.8921356, 1.44465256, 97.6368408),
	vector.create(85.8921356, 1.44465256, 97.6368408)
}
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.7.0"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("ActionService"):WaitForChild("RE"):WaitForChild("PerformAction"):FireServer(unpack(args))
game.Workspace.Stadium.Teams[tostring(enemyTeam)].Goal.Hitbox.Size = Vector3.new(4.520999908447266, 5.730000019073486, 2.6480000019073486)
           end
      end
end

function  SLSModule.TrueGoalHitbox()
                for _, player in game.Players:GetPlayers() do
               if player.Team ~= game.Players.LocalPlayer.Team and player.Team ~= nil then
                  game.Workspace.Stadium.Teams[tostring(player.Team)].Goal.Hitbox.Size = Vector3.new(x1,y1,z1)
               elseif player.Team == game.Players.LocalPlayer.Team and player.Team ~= nil then
                  game.Workspace.Stadium.Teams[tostring(player.Team)].Goal.Hitbox.Size = Vector3.new(31.327247619628906, 11.277809143066406, 8.289474487304688)           
          end
     end
end

function SLSModule.TrueAutoGetBall()
                for _, player in game.Players:GetPlayers() do
             if player:GetAttribute("HasBall", true) and player.Team ~= game.Players.LocalPlayer.Team and player:GetAttribute("TeamPosition") ~= "GK" then
               local CurrentPosition = Instance.new("Part", workspace)
               CurrentPosition.Anchored = true
               CurrentPosition.CanCollide = false
               CurrentPosition.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
               game.Players.LocalPlayer.Character:PivotTo(player.Character.HumanoidRootPart.CFrame)
   local args = {
	"TackleActivated",
	9999999999.9999999999
}
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.7.0"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("ActionService"):WaitForChild("RF"):WaitForChild("PerformActionThenGet"):InvokeServer(unpack(args))
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.7.0"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("ActionService"):WaitForChild("RF"):WaitForChild("PerformActionThenGet"):InvokeServer(unpack(args))
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.7.0"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("ActionService"):WaitForChild("RF"):WaitForChild("PerformActionThenGet"):InvokeServer(unpack(args))
game.Players.LocalPlayer.Character:PivotTo(CurrentPosition.CFrame)
CurrentPosition:Destroy()
            end
        end
end

return SLSModule
