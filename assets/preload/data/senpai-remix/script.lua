function onStepHit()

    if curStep == 344 or curStep == 440 or curStep == 608 then
        triggerEvent('Stage D1', 0, 0)
    end

    if curStep == 384 or curStep == 448 then
        triggerEvent('Stage D1 Back', 0, 0)
    end
end