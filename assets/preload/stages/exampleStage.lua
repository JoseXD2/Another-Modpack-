
local xx = 1030;
local yy = 775;
local ofs = 35;
local followchars = true;

function onCreate()
	makeLuaSprite('lab2', 'co', -900, -200);
	addLuaSprite('lab2', false);
	makeLuaSprite('lab', 'lab', -900, -200);
	addLuaSprite('lab', false);

	makeAnimatedLuaSprite('pibby', 'pibby', 1000, 500);
	addAnimationByPrefix('pibby', 'bump', 'bump',12,false);
	makeAnimatedLuaSprite('pibby2', 'pibby', 1000, 500);
	addAnimationByPrefix('pibby2', 'cump', 'cump',12,false);
	makeAnimatedLuaSprite('pibby3', 'pibby', 1020, 500);
	addAnimationByPrefix('pibby3', 'dump', 'dump',12,false);
	makeAnimatedLuaSprite('pibby4', 'pibby', 1020, 500);
	addAnimationByPrefix('pibby4', 'oh', 'oh',12,false);
	scaleObject('pibby', 0.8, 0.8)
	addLuaSprite('pibby', false);
	
end

function onBeatHit()
	if curBeat % 2 == 0 then
		objectPlayAnimation('pibby','bump');
	end
end








	


	