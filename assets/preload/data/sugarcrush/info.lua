local width = 0 

function onCreate()

    makeLuaSprite('barO','',0, 150)
    makeGraphic('barO',1280, 500,'FF8F00')
    addLuaSprite('barO', false)
    setScrollFactor('barO',0,0)
    setObjectCamera('barO','hud')

    makeLuaSprite('barw','',0,70)
    makeGraphic('barw',1280,190,'FFFFFF')
    addLuaSprite('barw', false)
    setScrollFactor('barw',0,0)
    setObjectCamera('barw','hud')

    makeLuaSprite('barb','',0, 470)
    makeGraphic('barb',1280,190,'FFFFFF')
    addLuaSprite('barb', false)
    setScrollFactor('barb',0,0)
    setObjectCamera('barb','hud')

    makeAnimatedLuaSprite('nikku', 'h24/images/skatepark/octagon/nikku', -100, -80);
    addAnimationByPrefix('nikku', 'idle', 'Nikku Move 1', 24, true); 
    addAnimationByPrefix('nikku', 'last', 'Nikku Last Frame', 24, true); 
    scaleObject('nikku', 1.4, 1.4);
    luaSpritePlayAnimation('nikku', 'idle'); 
    setObjectCamera('nikku','hud')
    addLuaSprite('nikku', false);

    makeLuaSprite('textbox', 'h24/images/skatepark/octagon/textbox', 510, 160);
    setObjectCamera('textbox','hud')
    scaleObject('textbox', 1.1, 1.1);  
    addLuaSprite('textbox', false);    

    makeLuaSprite('octagon', 'h24/images/skatepark/octagon/octagon', 880, 390);
    setObjectCamera('octagon','hud')
    scaleObject('octagon', 0.7, 0.7);  
    addLuaSprite('octagon', false);   

    makeLuaSprite('hereletme', 'h24/images/skatepark/octagon/hereletme', 20, 280);
    setObjectCamera('hereletme','hud')
    scaleObject('hereletme', 0.7, 0.7);  
    addLuaSprite('hereletme', false); 

    makeLuaSprite('showyou', 'h24/images/skatepark/octagon/showyou', 950, 290);
    setObjectCamera('showyou','hud')
    scaleObject('showyou', 0.7, 0.7);  
    addLuaSprite('showyou', false); 

    makeLuaSprite('bartop','',0,-30)
    makeGraphic('bartop',1280,100,'000000')
    addLuaSprite('bartop',false)
    setObjectCamera('bartop','hud')
    setScrollFactor('bartop',0,0)

    makeLuaSprite('barbot','',0,650)
    makeGraphic('barbot',1280,100,'000000')
    addLuaSprite('barbot',false)
    setScrollFactor('barbot',0,0)
    setObjectCamera('barbot','hud')

    setProperty('barw.alpha', 0); 
    setProperty('barO.alpha', 0); 
    setProperty('barb.alpha', 0); 
    setProperty('nikku.alpha', 0); 
    setProperty('textbox.alpha', 0); 
    setProperty('text.alpha', 0); 
    setProperty('octagon.alpha', 0); 
    setProperty('hereletme.alpha', 0); 
    setProperty('showyou.alpha', 0); 
    precacheImage('h24/images/skatepark/octagon/text');
end    

function onEvent(name, value1, value2)
if name == "Sugarcrush Octagon Cutscene" then
makeAnimatedLuaSprite('text', 'h24/images/skatepark/octagon/text', 585, 220);
addAnimationByPrefix('text', 'text', 'text', 24, true); 
addAnimationByPrefix('text', 'text', 'texto', 24, false); 
scaleObject('text', 0.4, 0.4);
setObjectCamera('text','hud')
addLuaSprite('text', false);
luaSpritePlayAnimation('text', 'text');       
setProperty('barw.alpha', 1); 
setProperty('barO.alpha', 1); 
setProperty('barb.alpha', 1); 
setProperty('nikku.alpha', 1); 
setProperty('textbox.alpha', 1); 
setProperty('text.alpha', 1); 
setProperty('octagon.alpha', 1); 
runTimer('prefin', 11);
runTimer('fin', 13);    
end
end

function onTimerCompleted(tag, loops, loopsleft)
if tag == 'prefin' then
setProperty('hereletme.alpha', 1); 
setProperty('showyou.alpha', 1);    
setProperty('nikku.y', 200);     
luaSpritePlayAnimation('nikku', 'last');     
doTweenX('nikku', 'nikku', 450, 0.7, 'linear');     
doTweenX('text', 'text', 1500, 0.7, 'linear'); 
doTweenX('octagon', 'octagon', 1500, 0.7, 'linear'); 
doTweenX('textbox', 'textbox', 1500, 0.7, 'linear'); 
end
if tag == 'fin' then
setProperty('Flash2.alpha', 1);
doTweenAlpha('tweenCutOffAlpha', 'Flash2', 0, 0.5, 'linear');
setObjectCamera('Flash2', 'other');   
removeLuaSprite('barw', true);
removeLuaSprite('barO', true);
removeLuaSprite('barb', true);
removeLuaSprite('nikku', true);
removeLuaSprite('textbox', true);
removeLuaSprite('text', true);
removeLuaSprite('nikku', true);
removeLuaSprite('textbox', true);
removeLuaSprite('octagon', true);
removeLuaSprite('hereletme', true);
removeLuaSprite('showyou', true);
end
end