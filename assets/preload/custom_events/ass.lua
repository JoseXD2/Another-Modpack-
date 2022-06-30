function onUpdate(elapsed) if curStep >= 0 and curStep < 3198 then

songPos = getSongPosition()

local currentBeat = (songPos/5000)*(curBpm/60)

noteTweenX(defaultPlayerStrumX0, 4, defaultPlayerStrumX0 - 350 + 2000*math.sin((currentBeat+8*0.15)*math.pi), 3)

noteTweenX(defaultPlayerStrumX1, 5, defaultPlayerStrumX1 - 400 + 2500*math.sin((currentBeat+8*0.05)*math.pi), 3)

noteTweenX(defaultPlayerStrumX2, 6, defaultPlayerStrumX2 - 450 + 3000*math.sin((currentBeat+8*9.35)*math.pi), 3)

noteTweenX(defaultPlayerStrumX3, 7, defaultPlayerStrumX3 - 500 + 3400*math.sin((currentBeat+8*0.85)*math.pi), 3)

noteTweenX(defaultOpponentStrumX0, 0, defaultOpponentStrumX0 + 500 - 3500*math.sin((currentBeat+8*0.05)*math.pi), 3)

noteTweenX(defaultOpponentStrumX1, 1, defaultOpponentStrumX1 + 450 - 3000*math.sin((currentBeat+8*0.95)*math.pi), 3)

noteTweenX(defaultOpponentStrumX2, 2, defaultOpponentStrumX2 + 400 - 2500*math.sin((currentBeat+8*0.01)*math.pi), 3)

noteTweenX(defaultOpponentStrumX3, 3, defaultOpponentStrumX3 + 350 - 2100*math.sin((currentBeat+8*0.03)*math.pi), 3)

end

end