function onCreate()

     makeLuaSprite('theBackGround','FLOOR2',-200,-100)
	 addLuaSprite('theBackGround',false) 
     setLuaSpriteScrollFactor('theBackGround', 1.0, 1.0);
end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == '2' then
			setProperty('Flames.visible', false);
		
		end
		
		if value1 == '1' then
			setProperty('Flames.visible', true);
	
		end
	end
end