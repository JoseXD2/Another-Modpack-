local u = false;
local r = 0;
local i =0
local shot = false;
local agent = 1
local health = 0;
local xx = 980;
local yy = 670;
local xx2 = 1100;
local yy2 = 670;
local ofs = 15;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()

    makeLuaSprite('Boo1', 'h24/images/boo/Boo1', 120, 200);
    addLuaSprite('Boo1', false);
    setLuaSpriteScrollFactor('Boo1', 1, 1); 
    scaleObject('Boo1', 1, 1); 

    makeLuaSprite('Boo3', 'h24/images/boo/Boo3', -100, 100);
    addLuaSprite('Boo3', false);
    setLuaSpriteScrollFactor('Boo3', 0.9, 0.9); 
    scaleObject('Boo3', 1.1, 1);   

    makeLuaSprite('Boo2', 'h24/images/boo/Boo2', 140, 50);
    addLuaSprite('Boo2', false);
    setLuaSpriteScrollFactor('Boo2', 1, 1); 
    scaleObject('Boo2', 1, 1);   
        
    setProperty('defaultCamZoom',0.8)

    makeLuaSprite('bartop','',0,-30)
    makeGraphic('bartop',1280,100,'000000')
    addLuaSprite('bartop',true)
    setObjectCamera('bartop','hud')
    setScrollFactor('bartop',0,0)

    makeLuaSprite('barbot','',0,650)
    makeGraphic('barbot',1280,100,'000000')
    addLuaSprite('barbot',true)
    setScrollFactor('barbot',0,0)
    setObjectCamera('barbot','hud')
end

function onUpdate(elapsed)

	daElapsed = elapsed * 30
	i = i + daElapsed

	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
     if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.8)
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('a',xx-(ofs*2),yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('a',xx+(ofs*2),yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('a',xx,yy-(ofs*2))
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('a',xx,yy+(ofs*2))
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('a',xx-(ofs*2),yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('a',xx+(ofs*2),yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('a',xx,yy-(ofs*2))
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('a',xx,yy+(ofs*2))
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('a',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('a',xx,yy)
            end
        else
      
            setProperty('defaultCamZoom',0.88)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('a',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('a',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('a',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('a',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('a',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('a',xx2,yy2)
            end
        end
    else
        triggerEvent('a','','')
    end
    
end
