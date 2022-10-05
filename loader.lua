local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Mewisous Hub | Key System", HidePremium = false, SaveConfig = false, IntroEnabled = false})

OrionLib:MakeNotification({
	Name = "Logged In!",
	Content = "Welcome "..Player.Name..",",
	Image = "rbxassetid://4483345998",
	Time = 5
})

_G.Key = "1" --knk6awep0z
_G.KeyInput = "string"

function MakeScript()
    if game.PlaceId == 6490016198 then -- demonslayer tycoon
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lixtronn/Scripts/main/demonslayer.lua"))()
        OrionLib:Destroy()

    elseif game.PlaceId == 7449423635 --[[3rd sea--]] or 2753915549 --[[2nd sea]] then -- bloxfruits
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Lixtronn/Scripts/main/scripthub_bloxfruits.lua"))()
            OrionLib:Destroy() 

    elseif game.PlaceId == 2809202155 then -- YBA
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Lixtronn/Scripts/main/scripthub_yba.lua"))()
                OrionLib:Destroy() 

            elseif game.PlaceId == 8396586868 then -- one piece game
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/Lixtronn/Scripts/main/scripthub_a_one_piece_game.lua"))()
                    OrionLib:Destroy() 

                elseif game.PlaceId == 6461766546 then -- a hero destiny
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lixtronn/Scripts/main/scripthub_a_heros_destiny.lua"))()
                        OrionLib:Destroy()

                    elseif game.PlaceId == 5130598377 then -- aut
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Lixtronn/Scripts/main/scripthub_aut.lua"))()
                            OrionLib:Destroy()
                        
    else
        OrionLib:MakeNotification({
            Name = "Game Not Supported!",
            Content = ":/",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
    end

function CorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Correct Key!",
        Content = "Script Loading...",
        Image = "rbxassetid://4483345998",
        Time = 5
    })    
end

function InvalidKeyNotification()
    OrionLib:MakeNotification({
        Name = "Invalid Key!",
        Content = "Please Enter The Correct Key!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })    
end

local Tab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "Enter Key!",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})

Tab:AddButton({
	Name = "Check Key!",
	Callback = function()
        if _G.KeyInput == _G.Key then
            CorrectKeyNotification()
            MakeScript()
        else
            InvalidKeyNotification()
        end
  	end    
})

Tab:AddButton({
	Name = "Copy Key Link!",
	Callback = function()
        setclipboard("https://discord.com/invite/RECcSvEXrW")
  	end    
})
OrionLib:Init()




