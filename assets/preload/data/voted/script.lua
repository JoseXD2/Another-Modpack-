local xx = 550;
local yy = 600;
local xx2 = 900;
local yy2 = 630;
local ofs = 20;
local followchars = true;

function onStartSong()
	setPropertyFromClass('flixel.FlxG','sound.music.volume',-1)
end

function onCreate()
    -- cool cenimatic aspect ratio/black bars
	makeLuaSprite('bartop','',-200,-30)
	makeGraphic('bartop',2000,100,'000000')
	addLuaSprite('bartop',false)
    setScrollFactor('bartop',0,0)
    setObjectCamera('bartop','hud')

    makeLuaSprite('barbot','',-200,650)
	makeGraphic('barbot',2000,100,'000000')
	addLuaSprite('barbot',false)
    setScrollFactor('barbot',0,0)
    setObjectCamera('barbot','hud')
--volume of song
	setPropertyFromClass('flixel.FlxG','sound.music.volume',0)
end

function onBeatHit()
    -- Opponent bopping to the beat
    if getProperty('dad.animation.curAnim.name') == 'idle' then
		characterPlayAnim('dad','idle',true)
	end

    -- Player bopping to the beat
    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
		characterPlayAnim('boyfriend','idle',true)
	end
-- among us motif camera zoom in in the begining
	if curBeat == 32 then
		setProperty('defaultCamZoom',1.1)
	end
-- zooms just a bit closer on BF	
	if curBeat == 36 then
		setProperty('defaultCamZoom',1.2)
	end
-- zooms back out to the default cam zoom
	if curBeat == 40 then
		setProperty('defaultCamZoom',0.9)
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
-- Zoom in that one part the song where the inst chills for a quick sec
	if curStep == 224 then
		doTweenZoom('screenZoom', 'camGame', 1.1, 0.33, 'quintOut');
		end

	if curStep == 608 then
		doTweenZoom('screenZoom', 'camGame', 1.1, 0.33, 'quintOut');
		end	

-- Zoom back out
	if curStep == 227 then
		doTweenZoom('screenZoom', 'camGame', 0.88, 0.1, 'quadIn');
		end

	if curStep == 611 then
		doTweenZoom('screenZoom', 'camGame', 0.88, 0.1, 'quadIn');
		end
-- boooh baaah bap at section 21
	if curStep == 336 then
		doTweenZoom('screenZoom', 'camGame', 1.0, 0.22, 'quadOut');
		end

	if curStep == 338 then
		doTweenZoom('screenZoom', 'camGame', 0.9, 0.1, 'quadIn');
		end
-- boooh baaah boh at section 21
	if curStep == 344 then
		doTweenZoom('screenZoom', 'camGame', 1.0, 0.22, 'quadOut');
		end

	if curStep == 346 then
		doTweenZoom('screenZoom', 'camGame', 0.9, 0.1, 'quadIn');
		end

-- boooh baaah bap with both at section 25
	if curStep == 400 then
		doTweenZoom('screenZoom', 'camGame', 1.0, 0.22, 'quadOut');
		end

	if curStep == 402 then
		doTweenZoom('screenZoom', 'camGame', 0.9, 0.1, 'quadIn');
		end

-- boooh baaah boh with both at section 25
	if curStep == 408 then
		doTweenZoom('screenZoom', 'camGame', 1.0, 0.22, 'quadOut');
		end

	if curStep == 410 then
		doTweenZoom('screenZoom', 'camGame', 0.9, 0.1, 'quadIn');
		end
end

local sleeze = 0
function onUpdate()

	-- dead among floating in the bg	
	setProperty('deadMong.x',getProperty('deadMong.x')-0.1)
	setProperty('deadMong.y',getProperty('deadMong.y')+0.05)

	setScrollFactor('gf', 0.89, 0.90);

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
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
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

	sleeze = sleeze -0.3;
		setProperty('deadMong.angle', sleeze)
end



