function onStepHit()
  if curStep==765 then
    setProperty('bg.visible',false)
    end
  if curStep==1277 then
    setProperty('bg.visible',true)
  end
  if curStep==896 then
    makeLuaSprite('black1','black',0,570)
    setObjectCamera('black1','other')
    makeLuaSprite('black2','black',0,-570)
    setObjectCamera('black2','hud')
    addLuaSprite('black1',false)
    addLuaSprite('black2',false)
  end
  if curStep==1149 then
    doTweenAlpha('black1','black1',0,1)
    doTweenAlpha('black2','black2',0,1)
  end
  if curStep==1791 then
    makeLuaSprite('bg3','white',-600,0)
    scaleObject('bg3',60,60)
    makeLuaSprite('black3','black',0,570)
    setObjectCamera('black3','other')
    makeLuaSprite('black4','black',0,-570)
    setObjectCamera('black4','hud')
    addLuaSprite('bg3',false)
    addLuaSprite('black3',false)
    addLuaSprite('black4',false)
  end
  if curStep==2048 then
    doTweenAlpha('white','bg3',0,0.1)
    doTweenAlpha('black5','black3',0,0.1)
    doTweenAlpha('black6','black4',0,0.1)
    end
  end