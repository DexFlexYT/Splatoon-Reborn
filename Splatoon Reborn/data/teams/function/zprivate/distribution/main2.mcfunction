
#> Give Special Tag:
    $tag $(PLAYER) add teams.DISTRIBUTE

#> Store to Score:
    $execute store result score .SELECTORPLAYERCOUNT TEAMS.VALUES if entity $(PLAYER)
    execute as @e[sort=random,limit=1,tag=teams.DISTRIBUTE] at @s run function teams:zprivate/distribution/unrestricted_fill with storage teams:storage DISTRIBUTION.setup

