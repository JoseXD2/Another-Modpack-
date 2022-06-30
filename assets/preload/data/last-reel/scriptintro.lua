function onCreate() 
    setProperty('skipCountdown', true)
    setPropertyFromClass('GameOverSubstate', 'characterName', 'Bendy_GameOver'); --Character json file for the death animation
    setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'BendyGameOver'); --put in mods/sounds/
    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'BendyHeartbeat'); --put in mods/music/
    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'BendyClick'); --put in mods/music/

    if not lowQuality then

     makeLuaSprite('4th song','introductionsong3',320,280)
     setObjectCamera('4th song', 'hud');
     addLuaSprite('4th song',true)

     runTimer('textSongDestroy',2)
  
     scaleEffect = 1
     alphaEffect = 1;
    end
end

function onUpdate()
    if not lowQuality then
     scaleEffect = scaleEffect + 0.001
     scaleObject('4th song',scaleEffect,scaleEffect)
     setProperty('4th song.x',getProperty('4th song.x') - 0.25)
     setProperty('4th song.y',getProperty('4th song.y') - 0.1)

        if alphaEffect < 1 then
         alphaEffect = alphaEffect - 0.01
        end
        if alphaEffect < 0 then
         removeLuaSprite('4th song',false)
         alphaEffect = null
        end
    end
    setProperty('4th song.alpha',alphaEffect)
end

function onTimerCompleted(tag)
    if tag == 'textSongDestroy' then
        alphaEffect = alphaEffect - 0.01
    end
end