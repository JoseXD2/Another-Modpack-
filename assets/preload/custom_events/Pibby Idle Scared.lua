function onEvent(n,v1,v2)

	if n == 'Pibby Idle Scared' then
		removeLuaSprite('pibby4',true);
		addLuaSprite('pibby3',false);
		scaleObject('pibby3', 0.8, 0.8)
	
		function onBeatHit()
			if curBeat % 2 == 0 then
				objectPlayAnimation('pibby3','dump');
			end
		end
	end

end

