local xx = 600;
local yy = 470;
local xx2 = 750;
local yy2 = 470;
-- offsets for when purple does his angry rant
local xx3 = 500;
local yy3 = 470;
local ofs = 15;
local followchars = true;

function onBeatHit()
--makes text visible finally
    if curBeat == 16 then
        setProperty('theVoteText.visible', true);
    end

-- camera zooms in on Purple
	if curBeat == 164 then
        doTweenZoom('screenZoom', 'camGame', 0.76, 4.96, 'quadIn');
        end
-- text animation plays
    if curBeat == 164 then
        objectPlayAnimation('theVoteText','vote', false)
        playSound('among_vote_text', 1);
    end
end

function onEvent( name, value1,value2)
	if name == 'Camera Zoom Speed' then
		camSpeed = value1
		camInt = value2
	end
end

function onStepHit()
	if curStep % camSpeed == 0 then
		triggerEvent('Add Camera Zoom',0.04*camInt,0.03*camInt)
	end
end

function onUpdate()

end



function onUpdate()
	setProperty('gf.visible', false);

	if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'voted' then
                triggerEvent('Camera Follow Pos',xx3,yy3)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
	if mustHitSection == false then
		objectPlayAnimation('crewAudience','watchOpponent',true)
	else
		objectPlayAnimation('crewAudience','watchPlayer',true)
	end
end