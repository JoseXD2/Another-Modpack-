
local u = false;
local r = 0;
local i =0
local shot = false;
local agent = 1
local health = 0;
local xx = -700;
local yy = -690;
local xx2 = 100;
local yy2 = 100;
local ofs = 35;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()
    makeLuaSprite('sky', 'h24/images/expurgated/sky', -3050, -1560);
    addLuaSprite('sky', false);
    setLuaSpriteScrollFactor('sky', 0.7, 0.7); 
    scaleObject('sky', 3.2, 3)  

    makeLuaSprite('rock2', 'h24/images/expurgated/rock2', -2750, -1690);
    addLuaSprite('rock2', false);
    setLuaSpriteScrollFactor('rock2', 0.7, 0.7); 
    scaleObject('rock2', 3.2, 3)       

    makeLuaSprite('ground', 'h24/images/expurgated/ground', -3150, -1760);
    addLuaSprite('ground', false);
    setLuaSpriteScrollFactor('ground', 1, 1); 
    scaleObject('ground', 3.2, 3)     

    makeLuaSprite('gradoverlay', 'h24/images/expurgated/gradoverlay', -3150, -1460);
    addLuaSprite('gradoverlay', false);
    setLuaSpriteScrollFactor('gradoverlay', 1, 0.1); 
    scaleObject('gradoverlay', 3.2, 3)  

    makeLuaSprite('signfront', 'h24/images/expurgated/signfront', -3150, -960);
    addLuaSprite('signfront', false);
    setLuaSpriteScrollFactor('signfront', 0.8, 0.1); 
    scaleObject('signfront', 3.2, 3)     


    setProperty('defaultCamZoom',0.45)
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
	
	setProperty('dad.y', (math.sin(i/20)*75) - 700)
	yy = (math.sin(i/20)*75) - 350

	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
     if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.32)
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
      
            setProperty('defaultCamZoom',0.45)
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
        triggerEvent('Camera Follow Pos','','')
    end
    
end
