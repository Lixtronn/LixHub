local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Lix Hub | Script Hub A One Piece Game", HidePremium = false, IntroEnabled = true, IntroText = "Lix Hub"})

--Variables
local player = game.Players.LocalPlayer

local Tab = Window:MakeTab({
	Name = "Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "LeadMarker Hub",
	Callback = function()
		loadstring(game:HttpGet("https://rawscripts.net/raw/Testing-A-0ne-Piece-Game-LeadMarkerAOPG-1595"))()

end    
})

Tab:AddButton({
	Name = "A one piece game",
	Callback = function()
		loadstring(game:HttpGet("https://rawscripts.net/raw/loader_1038"))()

end    
})

Tab:AddButton({
	Name = "X hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Bebo-Mods/BeboScripts/main/XHub.lua"))()

end    
})

Tab:AddButton({
	Name = "6 foot hub",
	Callback = function()
		loadstring(game:HttpGet('https://www.6footscripts.com/Scripts/6FootHub/Hub.lua'))()

end    
})





local Tab = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddLabel("Credits to everyone who made these hubs")

Tab:AddButton({
	Name = "My Discord Server! (click to copy link)",
	Callback = function()
		setclipboard("https://discord.com/invite/RECcSvEXrW")
end    
})
OrionLib:Init()
