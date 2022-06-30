function onStepHit()

    if curStep == 512 or curStep == 896 then
        setProperty('roott.visible', true)

    end

    if curStep == 640 then
        setProperty('roott.visible', false)
    end
end