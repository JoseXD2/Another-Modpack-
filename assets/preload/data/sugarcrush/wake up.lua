local width = 0 
local spriteName = "h24/images/skatepark/cutscene/background" -- replace limoSunset with the name of your sprite 

function onCreate() 	
makeLuaSprite("bg1", spriteName, -180, 50);	
width = getProperty("bg1.width") 	
makeLuaSprite("bg2", spriteName, width-20, 50) 	 
addLuaSprite("bg1", false) 	addLuaSprite("bg2", false) 	 	
doTweenX("bg1Tween", "bg1", -width, 4, "linear") 	
doTweenX("bg2Tween", "bg2", -20, 4, "linear") 
setObjectCamera('bg1','hud')
setObjectCamera('bg2','hud')
scaleObject('bg1', 3, 3);  
scaleObject('bg2', 3, 3);  
makeLuaSprite('nikkup', 'h24/images/skatepark/cutscene/nikkup', 600, 300);
setObjectCamera('nikkup','hud')
scaleObject('nikkup', 3, 3);  
addLuaSprite('nikkup', false); 

makeLuaSprite('exe', 'h24/images/skatepark/cutscene/exe', 20, 350);
setObjectCamera('exe','hud')
scaleObject('exe', 3.2, 3.2);  
addLuaSprite('exe', false); 

setProperty('nikkup.antialiasing', false);  
setProperty('exe.antialiasing', false);  
setProperty('bg2.antialiasing', false);  
setProperty('bg1.antialiasing', false);  

setProperty('nikkup.alpha', 0);  
setProperty('exe.alpha', 0);  
setProperty('bg2.alpha', 0);  
setProperty('bg1.alpha', 0); 

makeLuaSprite('Flash2', 'Flash2', 0, 0);
    setLuaSpriteScrollFactor('Flash2', 0, 0);
    setProperty('Flash2.alpha', 0.0001);
    addLuaSprite('Flash2', true);
    scaleObject('Flash2', 5, 5); 
    setObjectCamera('Flash2', 'other');    
end 

function onTweenCompleted(tag) 	
if tag == "bg1Tween" then
setProperty("bg1.x", 0)
setProperty("bg2.x", width-20) 		
doTweenX("bg1Tween", "bg1", -width, 4, "linear") 		
doTweenX("bg2Tween", "bg2", -20, 4, "linear") 	
end 
if tag == "exe" then
setProperty('Flash2.alpha', 1);
doTweenAlpha('tweenCutOffAlpha', 'Flash2', 0, 0.5, 'linear');
setObjectCamera('Flash2', 'other');   
removeLuaSprite('bg2', true);
removeLuaSprite('nikkup', true);
removeLuaSprite('exe', true);
removeLuaSprite('bg1', true);
end
end

function onEvent(name, value1, value2)
if name == "Sonic.EXE Cutscene" then
doTweenX("exe", "exe", 520, 6.5, "linear") 		
setProperty('nikkup.alpha', 1);  
setProperty('exe.alpha', 1);  
setProperty('bg2.alpha', 1);  
setProperty('bg1.alpha', 1); 
end
end