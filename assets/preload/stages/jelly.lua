function onCreate()
    addCharacterToList('jellybean')
    addCharacterToList('jellybeanE')
    addCharacterToList('skeleton')
    addCharacterToList('skeletonE')
    setProperty('camHUD.alpha', 0.001)
    makeLuaSprite('stagepurple', 'ourple', -850, -770)
	setLuaSpriteScrollFactor('stagepurple', 1.0, 1.0)
	addLuaSprite('stagepurple', false)

    makeAnimatedLuaSprite('skellies', 'skelliebros', 0, 460)
    addAnimationByPrefix('skellies', 'idle', 'Skellies Dance', 24, false)
    addAnimationByPrefix('skellies', 'idle-alt', 'SkelliesE Dance', 24, false)
    addAnimationByPrefix('skellies', 'transform', 'Skellies Transform', 24, false)
    addLuaSprite('skellies', false)

    makeLuaSprite('white', 'white', -100, -200)
    scaleObject('white', 5, 5)
    setLuaSpriteScrollFactor('white', 0, 0)
    setProperty('white.alpha', 0.001)
    addLuaSprite('white', true)
end

function onStepHit()
    if curStep == 1529 then
        objectPlayAnimation('skellies', 'transform', true)
        setProperty('skellies.x', 0 - 20)
        setProperty('skellies.y', 460 - 15)
    end
    if curStep == 1536 then
        setProperty('skellies.x', 0)
        setProperty('skellies.y', 460)
    end
end

function onBeatHit()
    if curStep < 1531 then
        objectPlayAnimation('skellies', 'idle', true)
    end
    if curStep > 1534 then
        objectPlayAnimation('skellies', 'idle-alt', true)
    end
end