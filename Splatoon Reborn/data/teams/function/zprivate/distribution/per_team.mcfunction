
#> Macro Team Name
data modify storage teams:storage DISTRIBUTION.setup.TEAM_NAME set from storage teams:storage DISTRIBUTION.setup.TEAMS[0]
execute as @e[sort=random,tag=teams.DISTRIBUTE,limit=1] run function teams:zprivate/distribution/per_member with storage teams:storage DISTRIBUTION.setup

scoreboard players remove $j TEAMS.VALUES 1
execute if score $j TEAMS.VALUES matches ..0 run scoreboard players remove $k TEAMS.VALUES 1
execute if score $j TEAMS.VALUES matches ..0 run data remove storage teams:storage DISTRIBUTION.setup.TEAMS[0]
execute if score $j TEAMS.VALUES matches ..0 if score $k TEAMS.VALUES matches 1.. run scoreboard players operation $j TEAMS.VALUES = .MAX_MEMBERS TEAMS.VALUES
execute if score $j TEAMS.VALUES matches 1.. run function teams:zprivate/distribution/per_team
