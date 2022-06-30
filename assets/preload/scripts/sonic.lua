function onUpdate()

    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SHIFT') then
        setProperty('cpuControlled', true)
    end

    if getProperty('boyfriend.curCharacter') == 'sonic-player' then    
        setPropertyFromClass('GameOverSubstate', 'characterName', 'sonic-dead'); --Character json file for the death animation
        setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'Death'); --put in mods/sounds/
        setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'GAME-OVER'); --put in mods/music/
        setPropertyFromClass('GameOverSubstate', 'endSoundName', 'Continue'); --put in mods/music/
    end
    if getProperty('boyfriend.curCharacter') == "sonic'n'tails-player" then    
        setPropertyFromClass('GameOverSubstate', 'characterName', 'sonic-dead'); --Character json file for the death animation
        setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'Death'); --put in mods/sounds/
        setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'GAME-OVER'); --put in mods/music/
        setPropertyFromClass('GameOverSubstate', 'endSoundName', 'Continue'); --put in mods/music/
    end
    if getProperty('boyfriend.curCharacter') == 'sonic-drowning' then    
        setPropertyFromClass('GameOverSubstate', 'characterName', 'sonic-drowned'); --Character json file for the death animation
        setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'Drowned'); --put in mods/sounds/
        setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'GAME-OVER'); --put in mods/music/
        setPropertyFromClass('GameOverSubstate', 'endSoundName', 'Continue'); --put in mods/music/
    end

end