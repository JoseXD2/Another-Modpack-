local u = false;
local r = 0;
local i =0
local shot = false;
local agent = 1
local health = 0;
local xx = 560.95;
local yy = 670;
local xx2 = 780.95;
local yy2 = 670;
local ofs = 35;
local followchars = true;
local del = 0;
local del2 = 0;
local sprite = "h24/images/momogogo/bg" 
local width = 0 

function onCreate()    
setProperty('defaultCamZoom',0.6)

makeLuaSprite("bg1", sprite, -8500, -250)    
addLuaSprite("bg1", false) 
doTweenX("bg1Tween", "bg1", 1500, 10, "linear")    
scaleObject('bg1', 3.2, 3.3);  

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

runTimer('xd', 6.2, 0);    
end 

function onTimerCompleted(tag, loops, loopsleft) 
if tag == "xd" then
setProperty("bg1.x", -8500)     
doTweenX("bg1Tween", "bg1", 1500, 10, "linear")     
end 
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
            setProperty('defaultCamZoom',0.65)
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