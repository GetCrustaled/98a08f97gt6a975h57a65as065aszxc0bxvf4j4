function giveBalloon()
    if game.Workspace:FindFirstChild("GreenBalloon", true) then
        balloonclone = game.Workspace:FindFirstChild("GreenBalloon", true):Clone()
        balloonclone.Parent = game.Players.LocalPlayer.Backpack
        wait()
        print("Balloon found!")
        else
            print("Balloon not found")
    end
end
giveBalloon()

function BTools()
	local Destroy = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
	Destroy.BinType = "Hammer"
	wait()
	local Copy = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
	Copy.BinType = "Clone"
	wait()
	local Move = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
	Move.BinType = "Grab"
	wait(1)
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "Action successful",
		Text = "BTools successfully given."
	})
end
BTools()

function noFall()
    local falldmg = game.Players.LocalPlayer.Character.FallDamageScript
    for i, v in pairs(getconnections(falldmg.Changed)) do
        v:Disable()
    end
    falldmg:Remove()
noFall()
end

function ws()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 32
ws()
end

function jumppwr()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100
jumppwr()
end

function removeMap(rmvmap)
    local map = game.Workspace.Structure[rmvmap]
    for i, v in pairs(getconnections(map.Changed)) do
        v:Disable()
    end
    map:Remove()
    rmvmap("Happy Home")
end

function tpIsland(place)
    local plr = game.Players.LocalPlayer
    if plr.Character then
        plr.Character.HumanoidRootPart.CFrame = place
        tpIsland(game:GetService("Workspace").Island.Grass.CFrame)
    end
end

function tpSpawn(place)
    local plr = game.Players.LocalPlayer
    if plr.Character then
        plr.Character.HumanoidRootPart.CFrame = place
        tpSpawn(game:GetService("Workspace").Tower.Platforms.PlatformPart.CFrame)
    end
end

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Crystal Hub (NDS v1.1)", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest"})
 
local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab2 = Window:MakeTab({
	Name = "Info",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section1 = Tab2:AddSection({
	Name = "Made by GetCrystaled#5604"
})

local Section2 = Tab2:AddSection({
	Name = "Priv script cause why not lmao"
})

local Section1 = Tab:AddSection({
	Name = "Give"
})

Tab:AddButton({
	Name = "Balloon",
	Callback = function()
      		giveBalloon()
  	end    
})

Tab:AddButton({
	Name = "BTools",
	Callback = function()
      		BTools()
  	end    
})

local Section2 = Tab:AddSection({
	Name = "Remove"
})

Tab:AddButton({
	Name = "Fall Damage",
	Callback = function()
      		noFall()
  	end    
})

local selectedMap

Tab:AddDropdown({
	Name = "Remove Map",
	Default = "Happy Home",
	Options = {"Happy Home", "Sky Tower", "Trailer Park", "Fort Indestructible", "Glass Office", "Surf Central", "Rakish Refinery", "Sunny Ranch", "Arch Park", "Raving Raceway", "Coastal Quickstop", "Lucky Mart", "Party Palace", "Heights School", "Furious Station", "Launch Land", "Prison Panic", "Safety Second", "Rainbow Ride", "Modest Headquarters", "Manic Mansion"},
	Callback = function(value)
		selectedMap = value
	end    
})

Tab:AddButton({
	Name = "Delete",
	Callback = function()
      		removeMap(selectedMap)
  	end    
})

local Section3 = Tab:AddSection({
	Name = "Movement"
})

Tab:AddButton({
	Name = "Double Walkspeed",
	Callback = function()
      		ws()
  	end    
})

Tab:AddButton({
	Name = "Double Jump height (use no fall)",
	Callback = function()
      		jumppwr()
  	end    
})

local Section3 = Tab:AddSection({
	Name = "Teleport"
})

Tab:AddButton({
	Name = "Spawn",
	Callback = function()
      		tpSpawn(game:GetService("Workspace").Tower.Platforms.PlatformPart.CFrame)
  	end    
})

Tab:AddButton({
	Name = "Island",
	Callback = function()
      		tpIsland(game:GetService("Workspace").Island.Grass.CFrame)
  	end    
})

OrionLib:Init()