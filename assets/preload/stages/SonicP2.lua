function onCreate()
	-- background shit
	makeLuaSprite('GHGround', 'SonicP2/GHGround', -1000, -750)
	setLuaSpriteScrollFactor('GHGround', 0.9, 0.9);
	scaleObject('GHGround', 8, 8)
	
	makeLuaSprite('ground', 'SonicP2/ground', -625, -160);
	setLuaSpriteScrollFactor('ground', 1.0, 1);
	scaleObject('ground', 1.1, 1.1);
	
   setProperty('GHGround.antialiasing', false);
	
	addLuaSprite('GHGround', false)
	addLuaSprite('ground', false);

end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == '2' then
			setProperty('GHGround.visible', true);
			setProperty('ground.visible', false);
		
		end
		
		if value1 == '1' then
			setProperty('ground.visible', true);
			setProperty('GHGround.visible', false);
		end
	end
end