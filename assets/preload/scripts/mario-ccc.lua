function onUpdate()

    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SHIFT') then
        setProperty('cpuControlled', true)
    end

    if getProperty('boyfriend.curCharacter') == 'mario-ccc' then    
        setPropertyFromClass('GameOverSubstate', 'characterName', 'mario-dead'); --Character json file for the death animation
        setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'marioDEAD'); --put in mods/sounds/
        setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'GAME-OVER'); --put in mods/music/
        setPropertyFromClass('GameOverSubstate', 'endSoundName', 'LetsGo'); --put in mods/music/
    end
    if getProperty('boyfriend.curCharacter') == "mario'n'luigi" then    
        setPropertyFromClass('GameOverSubstate', 'characterName', 'mario-dead'); --Character json file for the death animation
        setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'marioDEAD'); --put in mods/sounds/
        setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'GAME-OVER'); --put in mods/music/
        setPropertyFromClass('GameOverSubstate', 'endSoundName', 'LetsGo'); --put in mods/music/
    end

end