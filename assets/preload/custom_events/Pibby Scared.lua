function onEvent(n,v1,v2)
	if n == 'Pibby Scared' then
		removeLuaSprite('pibby2',true);
		addLuaSprite('pibby4',false);
		scaleObject('pibby4', 0.8, 0.8)
		objectPlayAnimation('pibby','oh');
	end
end