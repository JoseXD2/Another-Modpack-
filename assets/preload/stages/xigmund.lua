
local u = false;
local r = 0;
local i =0
local shot = false;
local agent = 1
local health = 0;
local xx = 800;
local yy = -570;
local xx2 = 200;
local yy2 = -270;
local ofs = 55;
local followchars = true;
local del = 0;
local del2 = 0;
local stopMoving = false;

function onCreate()
     
    makeLuaSprite('bg', 'h24/images/xigmund/bg', -1490, -1250);
    addLuaSprite('bg', false);
    setLuaSpriteScrollFactor('bg', 1, 1); 
    scaleObject('bg', 4, 4); 

    makeLuaSprite('SUM', 'h24/images/xigmund/SUM', 500, -1550);
    addLuaSprite('SUM', false);
    setLuaSpriteScrollFactor('SUM', 1, 1); 
    scaleObject('SUM', 2, 2);      

    makeLuaSprite('PlaRed', 'h24/images/xigmund/PlaRed', 1350, -1600);
    addLuaSprite('PlaRed', false);
    setLuaSpriteScrollFactor('PlaRed', 1, 1); 
    scaleObject('PlaRed', 2, 2); 

    makeLuaSprite('PlaBlue', 'h24/images/xigmund/PlaBlue', -250, -400);
    addLuaSprite('PlaBlue', false);
    setLuaSpriteScrollFactor('PlaBlue', 1, 1);  
    scaleObject('PlaBlue', 2, 2);       

    makeLuaSprite('SUM-2', 'h24/images/xigmund/SUM-2', 150, -700);
    addLuaSprite('SUM-2', false);
    setLuaSpriteScrollFactor('SUM-2', 1, 1); 
    scaleObject('SUM-2', 1, 1);      

    setProperty('defaultCamZoom', 0.55)

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

doTweenX("SUM", "SUM", 200, 218, "linear")  
doTweenX("PlaRed", "PlaRed", 1050, 218, "linear")  
doTweenX("PlaBlue", "PlaBlue", -650, 218, "linear")  
doTweenX("SUM-2", "SUM-2", -350, 218, "linear")      
end

function onUpdate(elapsed)

	daElapsed = elapsed * 30
	i = i + daElapsed


	if stopMoving == false then
		setProperty('dad.y', (math.sin(i/20)*40) - 800)
		setProperty('boyfriend.y', (math.sin(i/16)*50) - 500)
	end

	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
     if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.45)
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
      
            setProperty('defaultCamZoom',0.55)
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
    
end

function onGameOver()
	stopMoving = true;
end