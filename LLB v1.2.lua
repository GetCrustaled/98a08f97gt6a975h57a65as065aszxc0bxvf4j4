_G.autoClock = false

function ws()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 32
ws()
end

function jumppwr()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100
jumppwr()
end

function timeChanger()
    spawn(function()
        while _G.autoClock == true do
            game.Lighting.ClockTime = 0
            wait()
            game.Lighting.ClockTime = 1
            wait()
            game.Lighting.ClockTime = 2
            wait()
            game.Lighting.ClockTime = 3
            wait()
            game.Lighting.ClockTime = 4
            wait()
            game.Lighting.ClockTime = 5
            wait()
            game.Lighting.ClockTime = 6
            wait()
            game.Lighting.ClockTime = 7
            wait()
            game.Lighting.ClockTime = 8
            wait()
            game.Lighting.ClockTime = 9
            wait()
            game.Lighting.ClockTime = 10
            wait()
            game.Lighting.ClockTime = 11
            wait()
            game.Lighting.ClockTime = 12
            wait()
            game.Lighting.ClockTime = 13
            wait()
            game.Lighting.ClockTime = 14
            wait()
            game.Lighting.ClockTime = 15
            wait()
            game.Lighting.ClockTime = 16
            wait()
            game.Lighting.ClockTime = 17
            wait()
            game.Lighting.ClockTime = 18
            wait()
            game.Lighting.ClockTime = 19
            wait()
            game.Lighting.ClockTime = 20
            wait()
            game.Lighting.ClockTime = 21
            wait()
            game.Lighting.ClockTime = 22
            wait()
            game.Lighting.ClockTime = 23
            wait()
            game.Lighting.ClockTime = 24
            wait()
        end
    end)
end
timeChanger()

function giveGalaxy()
    game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
end
giveGalaxy()

function giveRainbow()
    game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
end
giveRainbow()

function giveDiamond()
    game:GetService("ReplicatedStorage").SpawnDiamondBlock:FireServer()
end
giveDiamond()

function giveSuper()
    game:GetService("ReplicatedStorage").SpawnSuperBlock:FireServer()
end
giveSuper()

function giveLucky()
    game:GetService("ReplicatedStorage").SpawnLuckyBlock:FireServer()
end
giveLucky()

function tpMid(place)
    local plr = game.Players.LocalPlayer
    if plr.Character then
        plr.Character.HumanoidRootPart.CFrame = place
tpMid(game:GetService("Workspace").CenterBlocks.Givers.VoidGiver.ColoredParts.TouchMe.CFrame)
    end
end

function tpSpawn(place)
    local plr = game.Players.LocalPlayer
    if plr.Character then
        plr.Character.HumanoidRootPart.CFrame = place
tpSpawn(game:GetService("Workspace").tp.SpawnWalls.CFrame)
    end
end





local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Crystal Hub (LBB v1.2)", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Give"
})

Tab:AddButton({
	Name = "Galaxy Block",
	Callback = function()
      		giveGalaxy()
  	end    
})

Tab:AddButton({
	Name = "Rainbow Block",
	Callback = function()
      		giveRainbow()
  	end    
})

Tab:AddButton({
	Name = "Diamond Block",
	Callback = function()
      		giveDiamond()
  	end    
})

Tab:AddButton({
	Name = "Super Block",
	Callback = function()
      		giveSuper()
  	end    
})

Tab:AddButton({
	Name = "Lucky Block",
	Callback = function()
      		giveLucky()
  	end    
})

local Section = Tab:AddSection({
	Name = "Teleport"
})

Tab:AddButton({
	Name = "Spawn",
	Callback = function()
      		tpSpawn(game:GetService("Workspace").tp.SpawnWalls.CFrame)
  	end    
})

Tab:AddButton({
	Name = "Middle",
	Callback = function()
      		tpMid(game:GetService("Workspace").CenterBlocks.Givers.VoidGiver.ColoredParts.TouchMe.CFrame)
  	end    
})

local Section = Tab:AddSection({
	Name = "Movement"
})

Tab:AddButton({
	Name = "Double Walkspeed",
	Callback = function()
      		ws()
  	end    
})

Tab:AddButton({
	Name = "Double Jump height",
	Callback = function()
      		jumppwr()
  	end    
})

local Section = Tab:AddSection({
	Name = "World"
})

Tab:AddButton({
	Name = "Remove Trees",
	Callback = function()
      		removeTrees()
  	end    
})

Tab:AddToggle({
	Name = "Time Changer",
	Default = false,
	Callback = function(bool)
		_G.autoClock = bool
		if bool then
		    timeChanger()
		end
	end    
})

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Work in progress",
    Text = "This version is still work in progress"
})