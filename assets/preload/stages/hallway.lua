
local u = false;
local r = 0;
local i =0
local shot = false;
local agent = 1
local health = 0;
local xx = 450.95;
local yy = 570;
local xx2 = 1152.9;
local yy2 = 455;
local ofs = 35;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()

    makeLuaSprite('bg', 'h24/images/hallway/bg', -950, -900);
    addLuaSprite('bg', false);
    setLuaSpriteScrollFactor('bg', 1, 1); 
    scaleObject('bg', 1.7, 1.7);   

    makeLuaSprite('grad', 'h24/images/hallway/grad', -950, -900);
    addLuaSprite('grad', true);
    setLuaSpriteScrollFactor('grad', 1, 1); 
    scaleObject('grad', 3.4, 3.4);   

    makeLuaSprite('fg', 'h24/images/hallway/fg', -950, -900);
    addLuaSprite('fg', true);
    setLuaSpriteScrollFactor('fg', 1, 1); 
    scaleObject('fg', 3.4, 3.4);           

    setProperty('defaultCamZoom',0.65)

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
   
    makeLuaSprite('caja', 'h24/images/hallway/cutscene1/caja', 200, 350);
    addLuaSprite('caja', false);
    setLuaSpriteScrollFactor('caja', 1, 1); 
    scaleObject('caja', 3, 3);   
    setObjectCamera('caja','other')
    setProperty('caja.antialiasing', false);

    makeLuaSprite('botones', 'h24/images/hallway/cutscene1/botones', 100, 600);
    addLuaSprite('botones', false);
    setLuaSpriteScrollFactor('botones', 1, 1); 
    scaleObject('botones', 2, 2);   
    setObjectCamera('botones','other')
    setProperty('botones.antialiasing', false);

    makeLuaSprite('thikku', 'h24/images/hallway/cutscene1/thikku', 570, 950);
    addLuaSprite('thikku', false);
    setLuaSpriteScrollFactor('thikku', 1, 1); 
    scaleObject('thikku', 3, 3);   
    setObjectCamera('thikku','other')
    setProperty('thikku.antialiasing', false);  
    setProperty('thikku.alpha', 0);    

    makeAnimatedLuaSprite('tobi', 'h24/images/hallway/cutscene1/tobi', 570, 0);
    addAnimationByPrefix('tobi', 'tobi', 'tobi', 17, true); 
    setProperty('tobi.antialiasing', false);  
    scaleObject('tobi', 5, 5);
    luaSpritePlayAnimation('tobi', 'tobi'); 
    setObjectCamera('tobi','other')
    addLuaSprite('tobi', true);

    setProperty('caja.alpha', 0); 
    setProperty('tobi.alpha', 0); 
    setProperty('botones.alpha', 0);    
end

function onEvent(name, value1, value2)
if name == "Fandomania Cutscene Start" then
setProperty('dad.visible', false)
setProperty('boyfriend.visible', false)
setProperty('gf.visible', false)
setProperty('bg.visible', false)
setProperty('fg.visible', false)
setProperty('grad.visible', false)
doTweenAlpha('camHUD', 'camHUD', 0, 1, 'linear');
runTimer('fin', 7.5);
runTimer('OMGTOBIFOXINFNF', 5.5);
runTimer('preXD', 0.01);
runTimer('XD', 0.3);
   end
end

function onTimerCompleted(tag, loops, loopsleft)
if tag == 'fin' then
removeLuaSprite('tobi', true);
doTweenAlpha('camHUD', 'camHUD', 1, 0.5, 'linear'); 
removeLuaSprite('tobi', true);
setProperty('dad.visible', true)
setProperty('boyfriend.visible', true)
setProperty('gf.visible', true)
setProperty('bg.visible', true)
setProperty('fg.visible', true)
setProperty('grad.visible', true)
end
if tag == 'preXD' then
doTweenAlpha('camHUD', 'camHUD', 0, 0.5, 'linear');
doTweenAlpha('caja', 'caja', 1, 0.5, 'linear');
doTweenAlpha('botones', 'botones', 1, 0.5, 'linear'); 
end
if tag == 'XD' then
doTweenAlpha('thikku', 'thikku', 1, 1.4, 'linear'); 
doTweenAngle('Gcaja', 'caja', -7, 0.2, 'cubic');
doTweenAngle('Gbotones', 'botones', 7, 0.2, 'cubic');
doTweenY('caja', 'caja', 780, 0.8, 'linear');
doTweenY('botones', 'botones', 900, 0.8, 'linear');
end
if tag == 'OMGTOBIFOXINFNF' then
setProperty('tobi.alpha', 1); 
removeLuaSprite('thikku', true);
removeLuaSprite('caja', true);
removeLuaSprite('botones', true);
end
end

function onUpdate(elapsed)

	daElapsed = elapsed * 30
	i = i + daElapsed

	daYvalue = 
	
	setProperty('dad.y', (math.sin(i/20)*50) - 200)
    setProperty('thikku.y', (math.sin(i/20)*50) + 100)
	yy = (math.sin(i/20)*50) + 200

	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
     if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.6)
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('a',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('a',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('a',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('a',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('a',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('a',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('a',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('a',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('a',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('a',xx,yy)
            end
        else
      
            setProperty('defaultCamZoom',0.75)
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
