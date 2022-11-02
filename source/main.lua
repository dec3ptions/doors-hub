local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "DOORS by Dec3ptions", HidePremium = false, SaveConfig = true, ConfigFolder = "Doors Summon"})
 
-- // TABS



local tabs_Entities = Window:MakeTab({
	Name = "Legacy Entities",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local tabs_CustomEntities = Window:MakeTab({
	Name = "Custom Entities",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local tabs_Visuals = Window:MakeTab({
	Name = "Visuals",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local tabs_Utilities = Window:MakeTab({
	Name = "Utilities",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local tabs_Functions = Window:MakeTab({
	Name = "Functions",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})



-- \\ TABS
 
-- // ENTITIES TAB


-- / Timothy
tabs_Entities:AddButton({
	Name = "Timothy",
	Callback = function()
		local a = game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game
		require(a.RemoteListener.Modules.SpiderJumpscare)(require(a), workspace.CurrentRooms["0"].Assets.Dresser.DrawerContainer, 0.2)
	end    
})
tabs_Entities:AddButton({
	Name = "Timothy NEXTDOOR",
	Callback = function()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
		local a = game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game
		require(a.RemoteListener.Modules.SpiderJumpscare)(require(a), workspace.CurrentRooms["0"].Assets.Dresser.DrawerContainer, 0.2)
	end    
})
tabs_Entities:AddButton({
	Name = "Timothy EVERYDOOR",
	Callback = function()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
	    	local a = game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game
	    	require(a.RemoteListener.Modules.SpiderJumpscare)(require(a), workspace.CurrentRooms["0"].Assets.Dresser.DrawerContainer, 0.2)
        end)
	end    
})
-- \ Timothy

-- / Glitch
tabs_Entities:AddButton({
	Name = "Glitch",
	Callback = function()
		require(game.ReplicatedStorage.ClientModules.EntityModules.Glitch).stuff(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
		workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
	end
})
tabs_Entities:AddButton({
	Name = "Glitch NEXTDOOR",
	Callback = function()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
		require(game.ReplicatedStorage.ClientModules.EntityModules.Glitch).stuff(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
		workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
	end
})
tabs_Entities:AddButton({
	Name = "Glitch EVERYDOOR",
	Callback = function()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
		    require(game.ReplicatedStorage.ClientModules.EntityModules.Glitch).stuff(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
		    workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
        end)
	end
})
-- \ Glitch

-- / Screech
tabs_Entities:AddButton({
	Name = "Screech",
	Callback = function()
		require(game.StarterGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech)(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
		workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
	end
})
tabs_Entities:AddButton({
	Name = "Screech NEXTDOOR",
	Callback = function()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
		require(game.StarterGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech)(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
		workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
	end
})
tabs_Entities:AddButton({
	Name = "Screech EVERYDOOR",
	Callback = function()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
		    require(game.StarterGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech)(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
		    workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
        end)
	end
})
-- \ Screech
 
-- / Halt
tabs_Entities:AddButton({
	Name = "Halt",
	Callback = function()
		require(game.ReplicatedStorage.ClientModules.EntityModules.Shade).stuff(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
		workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
	end
})
tabs_Entities:AddButton({
	Name = "Halt NEXTDOOR",
	Callback = function()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
		require(game.ReplicatedStorage.ClientModules.EntityModules.Shade).stuff(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
		workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
	end
})
tabs_Entities:AddButton({
	Name = "Halt EVERYDOOR",
	Callback = function()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
		    require(game.ReplicatedStorage.ClientModules.EntityModules.Shade).stuff(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
		    workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
        end)
	end
})
-- \ Halt
 
-- / SeekEyes
tabs_Entities:AddButton({
	Name = "SeekEyes",
	Callback = function()
		local count = 0
		repeat
			require(game:GetService("ReplicatedStorage").ClientModules.EntityModules.Seek).tease(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game), workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")], 999)
			count +=1
			wait(.01)
		until count = 10
	end
})
tabs_Entities:AddButton({
	Name = "SeekEyes NEXTDOOR",
	Callback = function()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
		repeat
			require(game:GetService("ReplicatedStorage").ClientModules.EntityModules.Seek).tease(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game), workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")], 999)
			count +=1
			wait(.01)
		until count = 10
	end
})
tabs_Entities:AddButton({
	Name = "SeekEyes EVERYDOOR",
	Callback = function()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
		    repeat
				require(game:GetService("ReplicatedStorage").ClientModules.EntityModules.Seek).tease(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game), workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")], 999)
				count +=1
				wait(.01)
			until count = 10
        end)
	end
})
-- \ SeekEyes



-- \\ ENTITIES TAB

-- // VISUALS TAB



-- / FlickerLights
tabs_Visuals:AddButton({
	Name = "FlickerLights",
	Callback = function()
		local room = workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")]
		local events = require(game.ReplicatedStorage.ClientModules.Module_Events)
		events.flickerLights(room, 1)
	end
})
tabs_Visuals:AddButton({
	Name = "FlickerLights NEXTDOOR",
	Callback = function()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
		local room = workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")]
		local events = require(game.ReplicatedStorage.ClientModules.Module_Events)
		events.flickerLights(room, 1)
	end
})
-- \ FlickerLights

-- / BreakLights
tabs_Visuals:AddButton({
	Name = "BreakLights",
	Callback = function()
		local room = workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")]
		local events = require(game.ReplicatedStorage.ClientModules.Module_Events)
		events.breakLights(room, 1)
	end
})
tabs_Visuals:AddButton({
	Name = "BreakLights NEXTDOOR",
	Callback = function()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
		local room = workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")]
		local events = require(game.ReplicatedStorage.ClientModules.Module_Events)
		events.breakLights(room, 1)
	end
})
-- \ BreeakLights

-- / HeartMinigame
tabs_Visuals:AddButton({
	Name = "HeartMinigame",
	Callback = function()
		firesignal(game.ReplicatedStorage.Bricks.ClutchHeartbeat.OnClientEvent)
	end
})
tabs_Visuals:AddButton({
	Name = "HeartMinigame NEXTDOOR",
	Callback = function()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
		firesignal(game.ReplicatedStorage.Bricks.ClutchHeartbeat.OnClientEvent)
	end
})
 
tabs_Visuals:AddButton({
	Name = "HeartAttack",
	Callback = function()
		for i = 1,30,1 do
			wait(1)
			firesignal(game.ReplicatedStorage.Bricks.ClutchHeartbeat.OnClientEvent)
			end
	end
})
tabs_Visuals:AddButton({
	Name = "HeartAttack NEXTROOM",
	Callback = function()
		game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
		for i = 1,30,1 do
			wait(1)
			firesignal(game.ReplicatedStorage.Bricks.ClutchHeartbeat.OnClientEvent)
			end
	end
})
-- \ HeartMinigame



-- \\ VISUALS TAB

-- // UTILITIES TAB



-- / FullBright

-- \ FullBright
 


-- \\ UTILITIES TAB

-- // FUNCTIONS TAB



-- / Die
tabs_Functions:AddButton({
	Name = "Die",
	Callback = function()
		game.Players.LocalPlayer.Character.Humanoid.Health = 0
	end
})
-- \ Die
 


-- \\ FUNCTIONS TAB
OrionLib:Init()