function onCreate()
	-- background shit

	 makeAnimatedLuaSprite('BendyBGRun', 'hallway', -13050, 300);
	 addAnimationByPrefix('BendyBGRun','Loop1','Loop01 instance 1',70,true);
	 addAnimationByPrefix('BendyBGRun','Loop2','Loop02 instance 1',70,true);
	 addAnimationByPrefix('BendyBGRun','Loop3','Loop03 instance 1',70,true);
	 addAnimationByPrefix('BendyBGRun','Loop4','Loop03 instance 1',70,true);
	 addAnimationByPrefix('BendyBGRun','Loop5','Loop03 instance 1',70,true);
	 addAnimationByPrefix('BendyBGRun','Tunnel','Tunnel instance 1',70,true);
	 objectPlayAnimation('BendyBGRun','Loop1',true);
	 scaleObject('BendyBGRun',6.9,6.9);
	 setLuaSpriteScrollFactor('BendyBGRun',0,1)
	 addLuaSprite('BendyBGRun',false);

	 makeAnimatedLuaSprite('BendyBGRunDark', 'hallway_but_Dark', -300, 450);
	 addAnimationByPrefix('BendyBGRunDark','Loop1','RunLol Hallway instance 1',50,true);
	 objectPlayAnimation('BendyBGRunDark','Loop1',true);
	 scaleObject('BendyBGRunDark',4.8,4.8);
	 setLuaSpriteScrollFactor('BendyBGRunDark',0,1)
 
	 makeAnimatedLuaSprite('Transition', 'Trans',-250, -250);
	 addAnimationByPrefix('Transition','Trans','beb instance 1',30,false);
	 objectPlayAnimation('Transition','Trans',false);
	 setLuaSpriteScrollFactor('Transition',0,0)
	 scaleObject('Transition',4.2,4.2);
	 setObjectCamera('Transition', 'hud');

	 makeLuaSprite('StairsBG', 'scrollingBG',-700, -500);
	 setLuaSpriteScrollFactor('StairsBG',0,0)
	 scaleObject('StairsBG',1.4,1.4);

	 makeLuaSprite('StairsBG2', 'scrollingBG',-700, -3283);
	 setLuaSpriteScrollFactor('StairsBG2',0,0)
	 scaleObject('StairsBG2',1.4,1.4);

	 makeLuaSprite('gradient', 'gradient',-800, -500);
	 setLuaSpriteScrollFactor('gradient',0,0)
	 scaleObject('gradient',1.6,1.6);

	makeLuaSprite('stairs', 'stairs',-700, -150);
	setLuaSpriteScrollFactor('stairs',0,0)
	scaleObject('stairs',1.8,1.8);

	makeLuaSprite('GayBG', 'C_00',-700, -600);
	setLuaSpriteScrollFactor('GayBG',0,0)
	scaleObject('GayBG',2,2);

	makeLuaSprite('GayBGGround', 'C_01',-1500,0);
	setLuaSpriteScrollFactor('GayBGGround',0,1)
	scaleObject('GayBGGround',1.8,1.8);

	makeLuaSprite('GayBGGround2', 'C_01',1950,0);
	setLuaSpriteScrollFactor('GayBGGround2',0,1)
	scaleObject('GayBGGround2',1.8,1.8);

	makeLuaSprite('GayBG2', 'C_02',0, -600);
	setLuaSpriteScrollFactor('GayBG2',0,0)
	scaleObject('GayBG2',1.5,1.5);

    BGY = -1000
	stairsY = -2200;
	playerX = -400;
	platformX = -500;

end

function onUpdate(elapsed)

	if curStep == 415 then
		objectPlayAnimation('BendyBGRun','Tunnel',true);
		setProperty('defaultCamZoom',0.65)
	end

	if curStep == 543 then
		objectPlayAnimation('BendyBGRun','Loop2',true);
		setProperty('defaultCamZoom',0.75)
	end

	if curStep == 410 or curStep == 537 or curStep == 777 or curStep == 1050 or curStep == 1306 or curStep == 1675 or curStep == 1931 then
     addLuaSprite('Transition',false)
	 objectPlayAnimation('Transition','Trans',true);
	 runTimer('TransitionDestroy',1.5)
	end

	if curStep == 783 then
		removeLuaSprite('BendyBGRun',false)	
		addLuaSprite('StairsBG',false);
		addLuaSprite('StairsBG2',false);
		addLuaSprite('stairs',true)
		setProperty('defaultCamZoom',0.6)
		addLuaSprite('gradient',true)
		end

	
	if curStep >= 783 and curStep <=1055 then
		setProperty('StairsBG.y',BGY)
		setProperty('StairsBG2.y',BGY - 2093)
		setProperty('stairs.y',stairsY)
		setProperty('boyfriend.x',playerX)
		setProperty('boyfriend.y',stairsY + 2100 - (playerX/2.3 + 150))
		setProperty('dad.x',playerX - 1040)
		setProperty('dad.y',stairsY + 2000 - (playerX/2.3 + 50))
		triggerEvent('Camera Follow Pos',1200,1000)
   
		BGY = BGY + 2
		stairsY = stairsY + 20
		playerX = playerX + 20
	   end

	if curStep == 1056 then
	 removeLuaSprite('StairsBG',false)
     removeLuaSprite('StairsBG2',false)
	 removeLuaSprite('gradient',false)
	 removeLuaSprite('stairs',false)
	 
		addLuaSprite('GayBG',false)
	 addLuaSprite('GayBGGround',true)
	 addLuaSprite('GayBGGround2',true)
	 addLuaSprite('GayBG2',false)
 
	 setProperty('defaultCamZoom',0.5)
	end

	if curStep >= 1056 and curStep <= 1310 then
       platformX = platformX - 20
	   setProperty('boyfriend.x',1800)
	   setProperty('boyfriend.y',1450)
	   setProperty('dad.x',460)
	   setProperty('dad.y',1100)

	   setProperty('GayBGGround.x',platformX)
	   setProperty('GayBGGround2.x',platformX + 2200)
	   setProperty('GayBG2.x',getProperty('GayBG2.x') - 0.25)
	   setProperty('GayBG.x',getProperty('GayBG.x') - 0.25)
	end

	if curStep == 1311 then
		removeLuaSprite('GayBGGround',false);
		removeLuaSprite('GayBGGround2',false);
		removeLuaSprite('GayBG',false);
		removeLuaSprite('GayBG2',false);
		setProperty('boyfriend.x',1800)
		setProperty('boyfriend.y',1330)
		setProperty('dad.x',460)
		setProperty('dad.y',1100)
		addLuaSprite('BendyBGRun',false)
		triggerEvent('Camera Follow Pos','','')
   
		setProperty('defaultCamZoom',0.75)
	end

	if curStep >= 1311 then
		setProperty('boyfriend.x',1750)
		setProperty('boyfriend.y',1360)
		setProperty('dad.x',460)
		setProperty('dad.y',1050)

	end

	if curStep == 1680 then
		objectPlayAnimation('BendyBGRun','Tunnel',true);
		setProperty('defaultCamZoom',0.65)
	end

	if curStep == 1937 then
		objectPlayAnimation('BendyBGRun','Loop3',true);
		setProperty('defaultCamZoom',0.75)
	end

	if stairsY >= 2000 then
		stairsY = -2200
		playerX = -400
	end

	if platformX <= -2000 then
		platformX = -1600
	end

	if BGY >= 1600 then 
		BGY = -1000
	end
end

function onTimerCompleted(tag)
	if tag == 'TransitionDestroy' then
		removeLuaSprite('Transition',false)
	end
end