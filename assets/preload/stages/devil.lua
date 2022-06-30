function onCreate()
  --background
  makeLuaSprite('back','devil',-1400,-1450)
  setScrollFactor('back',1.0,1.0)
  scaleObject('back',5,5)
  addLuaSprite('back',false)

  
  makeAnimatedLuaSprite('camera','cup/oldtimey',0,0)
  scaleObject('camera',4,4)
  addAnimationByPrefix('camera','idle','Cupheadshit_gif instance 1',24,true)
  objectPlayAnimation('camera','idle',true)
  setObjectCamera('camera','hud')
  addLuaSprite('camera',true)
  close(true);
  end