local StaticOwners = loadstring(game:HttpGet("https://raw.githubusercontent.com/3isht/Ragdoll-Engine/refs/heads/main/StaticOwners.lua"))()
local PremiumUsers = loadstring(game:HttpGet("https://raw.githubusercontent.com/3isht/Ragdoll-Engine/refs/heads/main/PremiumUsers.lua"))()
local BlacklistedUsers = loadstring(game:HttpGet("https://raw.githubusercontent.com/3isht/Ragdoll-Engine/refs/heads/main/BlacklistedUsers.lua"))()

function CheckPlayer(player)
    repeat task.wait() until player.Character
    local Humanoid = player.Character:WaitForChild("Humanoid")
    if Humanoid then
        if table.find(StaticOwners, player.UserId) then
            Event:AddToPremiumChatted(player.Name)
            if not string.find(Humanoid.DisplayName, "👑") then
                Humanoid.DisplayName = "[👑] "..Humanoid.DisplayName
            end
        elseif player.Name == Config.Owner then
            if IsPremium(player.Name) then
                Event:AddToPremiumChatted(player.Name)
                if not string.find(Humanoid.DisplayName, "⭐") then
                    Humanoid.DisplayName = "[⭐] "..Humanoid.DisplayName
                end
            else
                Event:AddToChatted(player.Name)
                if not string.find(Humanoid.DisplayName, "😎") then
                    Humanoid.DisplayName = "[😎] "..Humanoid.DisplayName
                end
            end
        elseif table.find(WhitelistedPlayers, player.Name) then
            Event:AddToChatted(player.Name)
            if not string.find(Humanoid.DisplayName, "😎") then
                Humanoid.DisplayName = "[😎] "..Humanoid.DisplayName
            end
        end
    end

    player.CharacterAdded:Connect(function(character)
        local HRT = character.HumanoidRootPart
        if HRT.CollisionGroup == "VR" then
            HRT.CollisionGroup = "Players"
        end
    end)
end

return CheckPlayer
