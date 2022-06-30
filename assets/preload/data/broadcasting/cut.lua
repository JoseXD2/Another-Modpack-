function onCreate()
makeLuaSprite('flash', 'flash', 0, 0);
addLuaSprite('flash', false);
setLuaSpriteScrollFactor('flash', 1.1, 1.1); 
setObjectCamera('flash','other')
scaleObject('flash', 5, 5)  

makeLuaSprite('bg', 'h24/images/stage3/cutscene/bg', 260, -40);
addLuaSprite('bg', false);
setObjectCamera('bg','other')
scaleObject('bg', 0.6, 0.64)   

makeLuaSprite('logo', 'h24/images/stage3/cutscene/logo', 360, 250);
addLuaSprite('logo', false);
setObjectCamera('logo','other')
scaleObject('logo', 1, 1)   
 
setProperty('bg.alpha',0)
setProperty('logo.alpha',0) 


makeLuaText('texto1', 'BEWARE OF THE MOON', 900, 190, 250)
setTextSize('texto1', 80)
addLuaText('texto1', true)
setObjectCamera('texto1', 'other')

makeLuaText('texto2', 'its watching you', 900, 190, 350)
setTextSize('texto2', 50)
addLuaText('texto2', true)
setObjectCamera('texto2', 'other') 
setProperty('texto1.alpha',0)
setProperty('texto2.alpha',0) 

doTweenAlpha('xno2', 'bg', 1, 7, 'linear');
doTweenAlpha('xno1', 'logo', 1, 7, 'linear');
end

function onTweenCompleted(tag)
if tag == 'xno2' then
doTweenAlpha('xno2', 'bg', 0, 2, 'backIn');
doTweenY('xno0', 'logo', 900, 2, 'backIn');

elseif tag == 'xno0' then
setProperty('texto1.alpha',1)
runTimer('gay1', 1.3, 1);
	end
end

function onTimerCompleted(tag, loops, loopsleft)
if tag == 'gay1' then	
setProperty('texto2.alpha',1) 
end
end

function onEvent(name,value1)
if name == 'Play Animation' then
if value1 == 'sw' then
removeLuaSprite('flash', true);
removeLuaSprite('bg', true);	
removeLuaSprite('logo', true);	
removeLuaText('texto1', false);
removeLuaText('texto2', false);
	end
end
end