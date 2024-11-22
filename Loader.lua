--[[
COMMANDS:
    /fling {name}: Flings the target.
    /come: Brings the alt to the caller.
    /reset: Resets the alt in case it glitches out.
    /notify {bool}: Notifies by sending a chat message saying who got whitelisted and who got unwhitelisted.
    /clearpending | /cpend: Clears the pending targets table.
    /fix: Fixes the bot when its not flinging on command.
    /Prefix {prefix}: Sets a new prefix.

    /whitelist {name} | /ws {name}: Premium command, whitelists a person.
    /unwhitelist {name} | /unws {name}: Premium command, unwhitelists the person if they exist in the table.

    /kick {name}: Owner command, kicks the bot.
    /say {name}: Owner command, makes the bot send a message.
    /freeze {name}: Owner command, freezes the bot.
    /thaw {name}: Owner command, unfreezes the bot.

Commands to be made:
    /loopfling {name}: Loop flings the target.
]]
getgenv().Config = {
    Owner = "Username",
    Prefix = "/",
    Busy = false, -- ALWAYS KEEP THIS FALSE
    Notify = true,
    PendingTargets = {},
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/3isht/Ragdoll-Engine/refs/heads/main/Main.lua"))()
