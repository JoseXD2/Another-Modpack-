function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'erect_stageback', -600, -300);
	setScrollFactor('stageback', 1, 1);
	
	makeLuaSprite('stagefront', 'erect_stagefront', -650, 600);
	setScrollFactor('stagefront', 1, 1);
	scaleObject('stagefront', 1.1, 1.1);

	makeLuaSprite('stagelight_left', 'erect_stage_light', 50, -50);
	setScrollFactor('stagelight_left', 1.2, 1.2);
	scaleObject('stagelight_left', 1.1, 1.1);
	
	makeLuaSprite('stagelight_right', 'erect_stage_light', 1680, -40);
	setScrollFactor('stagelight_right', 1.5, 1.3);
	scaleObject('stagelight_right', 1.1, 1.1);
	setProperty('stagelight_right.flipX', true); --mirror sprite horizontally

	makeLuaSprite('stagecurtains', 'erect_stagecurtainsandlights', -633, -400);
	setScrollFactor('stagecurtains', 1.2, 1.2);
	scaleObject('stagecurtains', 1.2, 1.2);

	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);
	
	close(true);
end