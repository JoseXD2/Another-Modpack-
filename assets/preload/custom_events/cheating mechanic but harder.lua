function onUpdate(elapsed)
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

    noteTweenX(defaultPlayerStrumX0, 8, ((screenWidth / 2) - (157 / 2)) + 0.5 * (math.sin((currentBeat*0.25) + (0) * 2) * 175), 0.001)
    noteTweenX(defaultPlayerStrumX1, 9, ((screenWidth / 2) - (157 / 2)) + 1 * (math.sin((currentBeat*0.25) + (1) * 2) * 180), 0.001)
    noteTweenX(defaultPlayerStrumX2, 10, ((screenWidth / 2) - (157 / 2)) + 2 * (math.sin((currentBeat*0.25) + (2) * 2) * 175), 0.001)
    noteTweenX(defaultPlayerStrumX3, 11, ((screenWidth / 2) - (157 / 2)) + 3 * (math.sin((currentBeat*0.25) + (3) * 2) * 175), 0.001)
    noteTweenX('fake111', 4, ((screenWidth / 2) - (157 / 2)) + 0.5 * (math.sin((currentBeat*0.25) + (4) * 2) * 175), 0.001)
    noteTweenX('11', 5, ((screenWidth / 2) - (157 / 2)) + 1 * (math.sin((currentBeat*0.25) + (5) * 2) * 175), 0.001)
    noteTweenX('1', 6, ((screenWidth / 2) - (157 / 2)) + 2 * (math.sin((currentBeat*0.25) + (6) * 2) * 175), 0.001)
    noteTweenX('1111', 7, ((screenWidth / 2) - (157 / 2)) + 3* (math.sin((currentBeat*0.25) + (111) * 2) * 175), 0.001)

    noteTweenX(defaultPlayerStrumX0, 12, ((screenWidth / 2) - (157 / 2)) + 0.5 * (math.sin((currentBeat*0.25) + (43) * 2) * 200), 0.001)
    noteTweenX(defaultPlayerStrumX1, 13, ((screenWidth / 2) - (157 / 2)) + 1 * (math.sin((currentBeat*0.25) + (34) * 2) * 175), 0.001)
    noteTweenX(defaultPlayerStrumX2, 14, ((screenWidth / 2) - (157 / 2)) + 2 * (math.sin((currentBeat*0.25) + (23434) * 2) * 210), 0.001)
    noteTweenX(defaultPlayerStrumX3, 15, ((screenWidth / 2) - (157 / 2)) + 3 * (math.sin((currentBeat*0.25) + (3434) * 2) * 230), 0.001)
    noteTweenX('fa141ke1', 8, ((screenWidth / 2) - (157 / 2)) + 0.5 * (math.sin((currentBeat*0.25) + (343) * 3) * 251), 0.001)
    noteTweenX('1414', 9, ((screenWidth / 2) - (157 / 2)) + 1 * (math.sin((currentBeat*0.25) + (112) * 2) * 175), 0.001)
    noteTweenX('15151', 10, ((screenWidth / 2) - (157 / 2)) + 2 * (math.sin((currentBeat*0.25) + (323) * 8) * 222), 0.001)
    noteTweenX('112231', 11, ((screenWidth / 2) - (157 / 2)) + 3* (math.sin((currentBeat*0.25) + (45) * 2) * 100), 0.001)

    noteTweenX(defaultPlayerStrumX0, 16, ((screenWidth / 2) - (157 / 2)) + 0.5 * (math.sin((currentBeat*0.25) + (43) * 2) * 200), 0.001)
    noteTweenX(defaultPlayerStrumX1, 17, ((screenWidth / 2) - (157 / 2)) + 1 * (math.sin((currentBeat*0.25) + (34) * 2) * 175), 0.001)
    noteTweenX(defaultPlayerStrumX2, 18, ((screenWidth / 2) - (157 / 2)) + 2 * (math.sin((currentBeat*0.25) + (23434) * 2) * 210), 0.001)
    noteTweenX(defaultPlayerStrumX3, 19, ((screenWidth / 6) - (157 / 2)) + 3 * (math.sin((currentBeat*0.25) + (3434) * 2) * 230), 0.001)
    noteTweenX('E', 12, ((screenWidth / 2) - (157 / 2)) + 0.5 * (math.sin((currentBeat*0.25) + (343) * 3) * 251), 0.001)
    noteTweenX('EE', 13, ((screenWidth / 2) - (157 / 2)) + 1 * (math.sin((currentBeat*0.25) + (112) * 2) * 175), 0.001)
    noteTweenX('LOL', 14, ((screenWidth / 2) - (157 / 2)) + 2 * (math.sin((currentBeat*0.25) + (323) * 8) * 222), 0.001)
    noteTweenX('FAWCK', 15, ((screenWidth / 2) - (157 / 2)) + 3* (math.sin((currentBeat*0.25) + (45) * 2) * 100), 0.001)

    
    noteTweenX(defaultPlayerStrumX0, 20, ((screenWidth / 2) - (157 / 2)) + 0.5 * (math.sin((currentBeat*0.25) + (43) * 2) * 200), 0.001)
    noteTweenX(defaultPlayerStrumX1, 21, ((screenWidth / 2) - (157 / 2)) + 1 * (math.sin((currentBeat*0.25) + (34) * 2) * 175), 0.001)
    noteTweenX(defaultPlayerStrumX2, 22, ((screenWidth / 2) - (157 / 2)) + 2 * (math.sin((currentBeat*0.25) + (23434) * 2) * 210), 0.001)
    noteTweenX(defaultPlayerStrumX3, 23, ((screenWidth / 6) - (157 / 2)) + 3 * (math.sin((currentBeat*0.25) + (3434) * 2) * 230), 0.001)
    noteTweenX('BUB', 16, ((screenWidth / 2) - (157 / 2)) + 0.5 * (math.sin((currentBeat*0.25) + (343) * 3) * 251), 0.001)
    noteTweenX('BBB', 17, ((screenWidth / 2) - (157 / 2)) + 1 * (math.sin((currentBeat*0.25) + (112) * 2) * 175), 0.001)
    noteTweenX('BBBOOBB', 18, ((screenWidth / 2) - (157 / 2)) + 2 * (math.sin((currentBeat*0.25) + (323) * 8) * 222), 0.001)
    noteTweenX('baba', 19, ((screenWidth / 2) - (157 / 2)) + 3* (math.sin((currentBeat*0.25) + (45) * 2) * 100), 0.001)
end
