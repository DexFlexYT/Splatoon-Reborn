# MACROS:
# $(max_members)
# $(player)
# $(teams)

#> Store Values into a STORAGE to interact with them better:
    $data modify storage teams:storage DISTRIBUTION.setup.MAX_MEMBERS set value $(max_members)
    $data modify storage teams:storage DISTRIBUTION.setup.PLAYER set value "$(player)"
    $data modify storage teams:storage DISTRIBUTION.setup.TEAMS set value $(teams)
    data modify storage teams:storage DISTRIBUTION.setup.TEAM_NAME set from storage teams:storage DISTRIBUTION.setup.TEAMS[0]


#> Value Check:
$scoreboard players set .MAX_MEMBERS TEAMS.VALUES $(max_members)

#> Using Macros:
execute if score .MAX_MEMBERS TEAMS.VALUES matches ..0 run return run function teams:zprivate/distribution/main2 with storage teams:storage DISTRIBUTION.setup
execute if score .MAX_MEMBERS TEAMS.VALUES matches 1.. run return run function teams:zprivate/distribution/main with storage teams:storage DISTRIBUTION.setup
