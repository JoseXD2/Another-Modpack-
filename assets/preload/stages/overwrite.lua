function onCreate()
  --background
  makeLuaSprite('stageback', 'bg',-600,-300);
  setScrollFactor('stageback',1,1)
  scaleObject('stageback', 2, 2)
  
  makeAnimatedLuaSprite('back', 'overwritelight',-250,-600)
  addAnimationByPrefix('back', 'idle', 'overbg',24,true)
  objectPlayAnimation('back','overbg',true)
  
  makeAnimatedLuaSprite('back2','overwritesquares',-200,-600)
  addAnimationByPrefix('back2','idle','overwrite_square',24,true)
  objectPlayAnimation('back2','overwrite_square',true)
  
  makeAnimatedLuaSprite('back3','overwritesquares',200,-600)
  addAnimationByPrefix('back3','idle','overwrite_square',48,true)
  objectPlayAnimation('back3','overwrite_square',true)
  
  makeAnimatedLuaSprite('back4','overwritesquares',600,-600)
  addAnimationByPrefix('back4','idle','overwrite_square',24,true)
  objectPlayAnimation('back4','overwrite_square',true)
  
  makeAnimatedLuaSprite('back5','overwritesquares',1000,-600)
  addAnimationByPrefix('back5','idle','overwrite_square',48,true)
  objectPlayAnimation('back5','overwrite_square',true)
  
  makeAnimatedLuaSprite('back6','overwritesquares',1400,-600)
  addAnimationByPrefix('back6','idle','overwrite_square',24,true)
  objectPlayAnimation('back6','overwrite_square',true)
  
  addLuaSprite('stageback', false);
  addLuaSprite('back',false);
  addLuaSprite('back2',false)
  addLuaSprite('back3',false)
  addLuaSprite('back4',false)
  addLuaSprite('back5',false)
  addLuaSprite('back6',false)
  
  close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
  end
  