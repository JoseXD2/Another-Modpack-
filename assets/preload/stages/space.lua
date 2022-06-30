 
local u = false;
local r = 0;
local i =0
local shot = false;
local agent = 1
local health = 0;
local followchars = true;
local del = 0;
local del2 = 0;

function onCreate()

    makeLuaSprite('s1', 'h24/images/stage3/s1', -2850, -560);
    addLuaSprite('s1', false);
    setLuaSpriteScrollFactor('s1', 1, 0.1); 
    scaleObject('s1', 4.6, 4)  

    makeLuaSprite('s2', 'h24/images/stage3/s2', -3000, -660);
    addLuaSprite('s2', false);
    setLuaSpriteScrollFactor('s2', 1, 0.2);
    scaleObject('s2', 4.2, 4.2)    

    makeLuaSprite('s3', 'h24/images/stage3/s3', -2800, -760);
    setLuaSpriteScrollFactor('s3', 1, 0.1);
    addLuaSprite('s3', false);
    scaleObject('s3', 4.4, 4.2)    

    makeLuaSprite('s5', 'h24/images/stage3/s5', -2000-400, -1160);
    addLuaSprite('s5', false);
    scaleObject('s5', 4.5, 4)     

    makeLuaSprite('s8', 'h24/images/stage3/s8', -2360, -950);
    addLuaSprite('s8', false);
    scaleObject('s8', 4, 3.6)   

    makeAnimatedLuaSprite('char', 'characters/GF_assets', -720, -110); 
    addAnimationByPrefix('char', 'idle', 'GF Dancing Beat', 24, true);
    objectPlayAnimation('char', 'idle');
    scaleObject('char', 0.5, 0.5)  
    addLuaSprite('char', false);     

    makeLuaSprite('s9', 'h24/images/stage3/s9', -2000, -960);
    addLuaSprite('s9', false);
    scaleObject('s9', 1.7, 1.7)    

    makeLuaSprite('s10', 'h24/images/stage3/s10', -2200-560, -960);
    addLuaSprite('s10', true);
    setLuaSpriteScrollFactor('s10', 1, 1);
    scaleObject('s10', 4.5, 4)   

    setProperty('defaultCamZoom',0.55)
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

    daYvalue = 
    
    setProperty('dad.y', (math.sin(i/20)*75) - 650)
    yy = (math.sin(i/20)*75) - 150

    if del > 0 then
        del = del - 1
    end
    if del2 > 0 then
        del2 = del2 - 1
    end
     if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.35)
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                
            end
        else
      
            setProperty('defaultCamZoom',0.5)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
               
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
               
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
               
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
               
            end
        end
    else
        triggerEvent('','','')
    end
    
end
