repeat wait() until game:IsLoaded() and game:FindFirstChild("CoreGui") and pcall(function() return game.CoreGui end)
local _function = {
    ["getid"] = function()
        local g = game.GameId
        if premium then
            if g == 7436755782 then return "483d639ad74a7814ff1057d68cec56c2" -- Grow a Garden
            elseif g == 7018190066 then return "d3a76114c1ea182127b88170b6043d11" -- Dead Rails
            elseif g == 5750914919 then return "bfd8ac56165c2caf1eebc5a14ccdb134" -- Fisch
            elseif g == 6325068386 then return "a0ad31cf58a8bd98dd82fa1fb648290f" -- Blue Lock Rivals
            elseif g == 4777817887 then return "d53370331c9ca16ce3479c3ac6ae5a78" -- Blade Ball
            elseif g == 994732206 then return "446a745866c1abf8459657502b7818fc" -- Blox Fruit
            elseif g == 4658598196 then return "27394fa4dc9c7268a839f2c98b6a35f7" -- Attack On Titan Revolution
            elseif g == 6331902150 then return "0771107275ffabca9221c264306214f9" -- Forsaken
            elseif g == 7709344486 then return "4039bc61ee76ab6f5247b15a0ebf5f60" end -- Steal a Brainrot
        else
            if g == 7436755782 then return "65c66a87b33565a9dea1a54b798b6b2a" -- Grow a Garden
            elseif g == 7018190066 then return "a3e99a8c1a465fc973e7aa0dda0e220c" -- Dead Rails
            elseif g == 5750914919 then return "8782b4febedc346da2f704fa97d11601" -- Fisch
            elseif g == 6325068386 then return "50ba70185011d66f3ed97e4e7f50bd11" -- Blue Lock Rivals
            elseif g == 4777817887 then return "6f48a7a95292a0885256d242900d81fb" -- Blade Ball
            elseif g == 994732206 then return "1ba7f8bc6888d119d65cdafbe3d78527" -- Blox Fruit
            elseif g == 4658598196 then return "5698b5c40f0217c268e673ef5e7b6581" -- Attack On Titan Revolution
            elseif g == 6331902150 then return "811768c852543782f63839177a263d53" -- Forsaken 
            elseif g == 7709344486 then return "36bb351f4d722c58af15efcb417b67da" end -- Steal a Brainrot
        end
    end,
    ["gamename"] = function()
        local g = game.GameId
        if g == 5750914919 then return "Fisch"
        elseif g == 7018190066 then return "Dead Rails"
        elseif g == 6325068386 then return "Blue Lock Rivals"
        elseif g == 4777817887 then return "Blade Ball"
        elseif g == 7436755782 then return "Grow a Garden"
        elseif g == 994732206 then return "Blox Fruit"
        elseif g == 4658598196 then return "Attack On Titan Revolution"
        elseif g == 6331902150 then return "Forsaken"
        elseif g == 7709344486 then return "Steal a Brainrot"
        end
    end,
    ["load"] = function(url)
        local game_url = game:HttpGet(url)
        return (load or loadstring)(game_url)()
    end
}
local script_id, game_name = _function.getid(), _function.gamename()
if script_id then
    game.StarterGui:SetCore(
        "SendNotification",
        {
            Title = "NatHub Loaded!",
            Text = game_name .. " Script Loaded!",
            Icon = "rbxassetid://99764942615873",
            Duration = 5
        }
    )
  
    if premium then premium = true; is_premium = true script_key = script_key end
    _function.load("https://api.luarmor.net/files/v4/loaders/" .. script_id .. ".lua")
end