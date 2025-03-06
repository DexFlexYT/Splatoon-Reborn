$team join $(TEAM_NAME) @s
tag @s remove teams.DISTRIBUTE
data modify storage teams:storage DISTRIBUTION.setup.TEAMS append from storage teams:storage DISTRIBUTION.setup.TEAMS[0]
data remove storage teams:storage DISTRIBUTION.setup.TEAMS[0]
data modify storage teams:storage DISTRIBUTION.setup.TEAM_NAME set from storage teams:storage DISTRIBUTION.setup.TEAMS[0]

scoreboard players remove .SELECTORPLAYERCOUNT TEAMS.VALUES 1
execute if score .SELECTORPLAYERCOUNT TEAMS.VALUES matches 1.. as @e[sort=random,tag=teams.DISTRIBUTE,limit=1] run function teams:zprivate/distribution/unrestricted_fill with storage teams:storage DISTRIBUTION.setup