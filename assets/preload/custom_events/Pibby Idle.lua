function onEvent(n,v1,v2)
		if n == 'Pibby Idle' then
			removeLuaSprite('pibby',true);
			addLuaSprite('pibby2',false);
			scaleObject('pibby2', 0.8, 0.8)
		
			function onBeatHit()
				if curBeat % 2 == 0 then
					objectPlayAnimation('pibby2','cump');
				end
			end
		end

end