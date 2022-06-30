function onCreate()
  --background
  makeLuaSprite('b','bendy/postdemise',-600,-800)
  scaleObject('b',2,2)
  makeLuaSprite('bg','bendy/inky depths',-600,-800)
  scaleObject('bg',2,2)
  makeLuaSprite('mid','bendy/MidGround',-600,-800)
  scaleObject('mid',2,2)
  makeLuaSprite('fg','bendy/Foreground',-600,-400)
  scaleObject('fg',2,2)
  makeLuaSprite('nuts','bendy/NUTS',-600,-550)
  scaleObject('nuts',2,2)
  makeLuaSprite('chains','bendy/Chains',-600,-600)
  scaleObject('chains',2,2)
  makeAnimatedLuaSprite('sammy','bendy/SammyBg',600,50)
  scaleObject('sammy',2,2)
  addAnimationByPrefix('sammy','idle','Sam',24,true)
  objectPlayAnimation('sammy','idle',true)
  addLuaSprite('b',false)
  addLuaSprite('bg',false)
  addLuaSprite('sammy',false)
  addLuaSprite('mid',false)
  addLuaSprite('fg',true)
  addLuaSprite('chains',true)
  addLuaSprite('nuts',false)
  close(true);
  end