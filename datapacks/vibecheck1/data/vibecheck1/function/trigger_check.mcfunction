# Run vibecheck if triggered
execute as @a[scores={vibecheck=1..}] run function vibecheck1:vibecheck

# Show leaderboard in chat if triggered
execute as @a[scores={vibeleaderboard=1..}] run function vibecheck1:show_leaderboard

schedule function vibecheck1:trigger_check 1t