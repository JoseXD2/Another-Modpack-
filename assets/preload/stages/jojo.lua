
local u = false;
local r = 0;
local i =0
local shot = false;
local agent = 1
local health = 0;
local xx = -1100;
local yy = -120;
local xx2 = -330;
local yy2 = -120;
local ofs = 35;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()
    
    makeLuaSprite('bgx', 'h24/images/jojo/bgx', -3200, -2220);
    addLuaSprite('bgx', false);
    setLuaSpriteScrollFactor('bgx', 1, 1); 
    scaleObject('bgx', 2.5, 2.5);   
        
    setProperty('defaultCamZoom',0.65)

    makeLuaSprite('bartop','',0,-30)
    makeGraphic('bartop',1280,100,'000000')
    addLuaSprite('bartop',true)
    setObjectCamera('bartop','hud')
    setScrollFactor('bartop',0,0)

    makeLuaSprite('bg', 'h24/images/jojo/cutscene/bg', 0, 70);
    setLuaSpriteScrollFactor('bg', 0, 0);
    addLuaSprite('bg', true);
    scaleObject('bg', 1.5, 1.3);  
    setObjectCamera('bg', 'hud');     

    makeLuaSprite('bg2', 'h24/images/jojo/cutscene/bg2', 0, 70);
    setLuaSpriteScrollFactor('bg2', 0, 0);
    addLuaSprite('bg2', true);
    scaleObject('bg2', 1.5, 1.3);  
    setObjectCamera('bg2', 'hud');  

    makeLuaSprite('bg3', 'h24/images/jojo/cutscene/bg3', 0, 70);
    setLuaSpriteScrollFactor('bg3', 0, 0);
    addLuaSprite('bg3', true);
    scaleObject('bg3', 1.5, 1.1);  
    setObjectCamera('bg3', 'hud');

    makeLuaSprite('bg4', 'h24/images/jojo/cutscene/bg4', -10, 70);
    setLuaSpriteScrollFactor('bg4', 0, 0);
    addLuaSprite('bg4', true);
    scaleObject('bg4', 1.5, 1.3);  
    setObjectCamera('bg4', 'hud');   

    makeLuaSprite('bg5', 'h24/images/jojo/cutscene/bg5', -10, 70);
    setLuaSpriteScrollFactor('bg5', 0, 0);
    addLuaSprite('bg5', true);
    scaleObject('bg5', 1.5, 1.3);  
    setObjectCamera('bg5', 'hud');           

    makeLuaSprite('barbot','',0,650)
    makeGraphic('barbot',1280,100,'000000')
    addLuaSprite('barbot',true)
    setScrollFactor('barbot',0,0)
    setObjectCamera('barbot','hud') 

    setProperty('bg.alpha', 0.0001);
    setProperty('bg2.alpha', 0.0001);
    setProperty('bg3.alpha', 0.0001);
    setProperty('bg4.alpha', 0.0001);
    setProperty('bg5.alpha', 0.0001);

    makeLuaSprite('Flash2', 'Flash2', 0, 0);
    setLuaSpriteScrollFactor('Flash2', 0, 0);
    setProperty('Flash2.alpha', 0.0001);
    addLuaSprite('Flash2', true);
    scaleObject('Flash2', 5, 5); 
    setObjectCamera('Flash2', 'other');    

end

function onEvent(name, value1, value2)
if name == "JoJo Cutscene" then
setProperty('Flash2.alpha', 1);
doTweenAlpha('tweenCutOffAlpha', 'Flash2', 0, 0.5, 'linear');
setObjectCamera('Flash2', 'other');       
setProperty('bg.alpha', 1);
runTimer('c1', 2);
runTimer('c2', 3);
runTimer('c3', 4);
runTimer('c4', 5);
runTimer('c5', 6);
end
end

function onTimerCompleted(tag, loops, loopsleft)
if tag == 'c1' then
setProperty('Flash2.alpha', 1);
doTweenAlpha('tweenCutOffAlpha', 'Flash2', 0, 0.5, 'linear');
setObjectCamera('Flash2', 'other');    
removeLuaSprite('bg', true);    
setProperty('bg2.alpha', 1);
elseif tag == 'c2' then
setProperty('Flash2.alpha', 1);
doTweenAlpha('tweenCutOffAlpha', 'Flash2', 0, 0.5, 'linear');
setObjectCamera('Flash2', 'other');      
removeLuaSprite('bg2', true);    
setProperty('bg3.alpha', 1);  
elseif tag == 'c3' then
setProperty('Flash2.alpha', 1);
doTweenAlpha('tweenCutOffAlpha', 'Flash2', 0, 0.5, 'linear');
setObjectCamera('Flash2', 'other');      
removeLuaSprite('bg3', true);    
setProperty('bg4.alpha', 1);
elseif tag == 'c4' then
setProperty('Flash2.alpha', 1);
doTweenAlpha('tweenCutOffAlpha', 'Flash2', 0, 0.5, 'linear');
setObjectCamera('Flash2', 'other');      
removeLuaSprite('bg4', true);    
setProperty('bg5.alpha', 1);
elseif tag == 'c5' then
setProperty('Flash2.alpha', 1);
doTweenAlpha('tweenCutOffAlpha', 'Flash2', 0, 0.5, 'linear');
setObjectCamera('Flash2', 'other');      
removeLuaSprite('bg5', true);    
end
end   

function onUpdate(elapsed)

	daElapsed = elapsed * 30
	i = i + daElapsed

	daYvalue = 
	
	setProperty('dad.y', (math.sin(i/20)*75) - 800)
	yy = (math.sin(i/20)*75) - 350

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
                triggerEvent('',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('',xx,yy)
            end
        else
      
            setProperty('defaultCamZoom',0.65)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('',xx2,yy2)
            end
        end
    else
        triggerEvent('','','')
    end
    
end
