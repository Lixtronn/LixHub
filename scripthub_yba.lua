local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Mewisous Hub | YBA", HidePremium = false, IntroEnabled = true, IntroText = "Lix Hub"})

--Variables
local player = game.Players.LocalPlayer

local Tab = Window:MakeTab({
	Name = "Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "LuaRepo v2",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/zakater5/LuaRepo/main/YBA/v2.lua"))()
end    
})

Tab:AddButton({
	Name = "LuaRepo v3",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/zakater5/LuaRepo/main/YBA/v3.lua"))()
end    
})

Tab:AddButton({
	Name = "YBA sucks ass",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Tobias020108Back/YBA-AUT/main/YBA-GUI-Rewrite.lua"))() 
end    
})

Tab:AddButton({
	Name = "Nex Hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/CopyReal/NexHub/main/NexHubLoader"))()
end    
})

Tab:AddButton({
	Name = "Historia Hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Historia00012/HISTORIAHUB/main/Histyhubb"))()
end    
})

Tab:AddButton({
	Name = "yba cus yes",
	Callback = function()
		loadstring(game:HttpGet"https://raw.githubusercontent.com/SupBabe/Hentai/main/YBA.lua")()
end    
})


local Tab = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddLabel("")

Tab:AddLabel("")

OrionLib:Init()
