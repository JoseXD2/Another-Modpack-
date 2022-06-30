function onEvent(name)
    songPos = getSongPosition()
    local currentBeat = (songPos/5000)*(1200/60)
    function onMoveCamera(focus)
        if focus == 'boyfriend' then
            -- called when the camera focus on boyfriend
        elseif focus == 'dad' then
            setProperty('camFollowPos.y',getProperty('camFollowPos.y') + (math.sin(currentBeat) * 0.6))
        end
    end
    noteTweenX(defaultPlayerStrumX0, 4, ((screenWidth / 2) - (157 / 2)) + 0.5 * (math.sin((currentBeat*0.25) + (0) * 2) * 175), 0.001)
    noteTweenX(defaultPlayerStrumX1, 5, ((screenWidth / 2) - (157 / 2)) + 1 * (math.sin((currentBeat*0.25) + (1) * 2) * 175), 0.001)
    noteTweenX(defaultPlayerStrumX2, 6, ((screenWidth / 2) - (157 / 2)) + 2 * (math.sin((currentBeat*0.25) + (2) * 2) * 175), 0.001)
    noteTweenX(defaultPlayerStrumX3, 7, ((screenWidth / 2) - (157 / 2)) + 3 * (math.sin((currentBeat*0.25) + (3) * 2) * 175), 0.001)
    noteTweenX('fake1', 0, ((screenWidth / 2) - (157 / 2)) + 0.5 * (math.sin((currentBeat*0.25) + (4) * 2) * 175), 0.001)
    noteTweenX('fake2', 1, ((screenWidth / 2) - (157 / 2)) + 1 * (math.sin((currentBeat*0.25) + (5) * 2) * 175), 0.001)
    noteTweenX('fake3', 2, ((screenWidth / 2) - (157 / 2)) + 2 * (math.sin((currentBeat*0.25) + (6) * 2) * 175), 0.001)
    noteTweenX('fake4', 3, ((screenWidth / 2) - (157 / 2)) + 3* (math.sin((currentBeat*0.25) + (7) * 2) * 175), 0.001)
    end