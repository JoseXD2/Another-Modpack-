function onCreate()
	-- background shit
end
function onStepHit()
    cameraShake('hud', 0.003, 0.2);
end

function onBeatHit()
    if curBeat % 2 == 0 then
        objectPlayAnimation('pibby','bounce',true)
    end
end

function opponentNoteHit()
    if curBeat % 2 == 0 then	
        local luckyRoll = math.random(1, 50)
        local luckyRoll2 = math.random(1, 50)

    if curBeat % 2 == 159 then	
        local luckyRoll = math.random(1, 50)
        local luckyRoll2 = math.random(1, 50)

    if curBeat % 2 == 175 then	
        local luckyRoll = math.random(1, 50)
        local luckyRoll2 = math.random(1, 50)
    
    if mustHitSection == false then
        if (luckyRoll >= 45) then
            cameraShake('hud', 0.08, 0.05);
        end
    end
    if mustHitSection == false then
        if (luckyRoll2 >= 45) then
            cameraShake('game', 0.08, 0.05);
                    end
                end
            end
        end
    end
end