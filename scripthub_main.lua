local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Lix Software | Script Hub", HidePremium = false, SaveConfig = false, IntroEnabled = false})

OrionLib:MakeNotification({
	Name = "Logged In!",
	Content = "Welcome "..Player.Name..",",
	Image = "rbxassetid://4483345998",
	Time = 5
})

Tab:AddLabel("Welcome, Please Pick a Game!")


Tab:AddButton({
	Name = "Blox Fruits", -- blox fruit button
	Callback = function()
      		MakeScript()
  	end    
})

Tab:AddButton({
	Name = "YBA",
	Callback = function() -- yba button
      		MakeScript()
  	end    
})

function MakeScript()
    if game.PlaceId == 2753915549 then -- bloxfruits
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lixtronn/Scripts/main/scripthub.lua"))()
        OrionLib:Destroy()
    elseif game.PlaceId == 2809202155 then -- YBA
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lixtronn/Scripts/main/scripthub.lua"))()
        OrionLib:Destroy()
    else
        OrionLib:MakeNotification({ -- if game not supported make notification
            Name = "Game Not Supported!",
            Content = ":/",
            Image = "rbxassetid://4483345998",
            Time = 5
        })    
    end    
end

OrionLib:Init()




