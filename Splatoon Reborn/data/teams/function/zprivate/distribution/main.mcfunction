
#> Give Special Tag:
    $tag $(PLAYER) add teams.DISTRIBUTE

#> Store to Score:
    $execute store result score .SELECTORPLAYERCOUNT TEAMS.VALUES if entity $(PLAYER)
    execute store result score .MAX_MEMBERS TEAMS.VALUES run data get storage teams:storage DISTRIBUTION.setup.MAX_MEMBERS
    execute store result score .TEAMS_COUNT TEAMS.VALUES run data get storage teams:storage DISTRIBUTION.setup.TEAMS
    #> Scoreboard Magic:
        scoreboard players operation $j TEAMS.VALUES = .MAX_MEMBERS TEAMS.VALUES
        scoreboard players operation $k TEAMS.VALUES = .TEAMS_COUNT TEAMS.VALUES

    function teams:zprivate/distribution/per_team
