local resetHideHud = false

function onCreatePost()
	resetHideHud = not hideHud;
	if resetHideHud then
		setPropertyFromClass('ClientPrefs', 'hideHud', true);
	end
	precacheImage('ratings/shit');
	precacheImage('ratings/bad');
	precacheImage('ratings/good');
	precacheImage('ratings/sick');
	precacheImage('ratings/go');
end	

function goodNoteHit(id, direction, noteType, isSustainNote)
	if not isSustainNote and resetHideHud then
		strumTime = getPropertyFromGroup('notes', id, 'strumTime');
		local rating = getRating(strumTime - getSongPosition() + getPropertyFromClass('ClientPrefs','ratingOffset'));
		local middlescrolloffset = 0;
		local downscrolloffset = 0;
		if middlescroll then
		middlescrolloffset = 300;
		end
		if downscroll then
		downscrolloffset = 500;
		end
		makeLuaSprite('lastRating', 'ratings/' .. rating, screenWidth * 0.35 - -100 - middlescrolloffset, screenHeight / 2 - 310 + downscrolloffset);
		setObjectCamera('lastRating','hud');
		setProperty('lastRating.velocity.y', math.random(-80, -80));
		setProperty('lastRating.velocity.x', math.random(-10));
		setProperty('lastRating.acceleration.y', 150);
		runTimer('lastRatingTimer', crochet / 17500);

		setScrollFactor('lastRating', 1, 1);
		scaleObject('lastRating', 0.49, 0.49);
		updateHitbox('lastRating');
		addLuaSprite('lastRating', true);
		local combo = getProperty('combo');
		if combo >= 0 then
			for i=2,0,-1 do
				local tag = 'combodigit' .. i;
				makeLuaSprite(tag, 'num' .. math.floor(combo / 10 ^ i % 10), screenWidth * 0.35 - -200 - middlescrolloffset - i * 33, screenHeight / 2 + -240 + downscrolloffset);
				setObjectCamera(tag,'hud');
				setProperty(tag .. '.velocity.y', math.random(-140, -160));
				setProperty(tag .. '.velocity.x', math.random(-5, 5));
				setProperty(tag .. '.acceleration.y', math.random(200, 300));
				runTimer(tag .. 'Timer', crochet / 17000);
				setScrollFactor(tag, 1, 1);
				scaleObject(tag, 0.4, 0.4);
				updateHitbox(tag);
				addLuaSprite(tag, true);
			end
		end
	end 
end

function getRating(diff)
	diff = math.abs(diff);
	if diff <= getPropertyFromClass('ClientPrefs', 'badWindow') then
		if diff <= getPropertyFromClass('ClientPrefs', 'goodWindow') then
			if diff <= getPropertyFromClass('ClientPrefs', 'sickWindow') then
				return 'sick';
			end
			return 'good';
		end
		return 'bad';
	end
	return 'shit';
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'lastRatingTimer' then
		doTweenAlpha('lastRatingAlpha', 'lastRating', 0, 0.5);
	elseif tag == 'combodigit0Timer' then
		doTweenAlpha('combodigit0Alpha', 'combodigit0', 0, 0.5);
	elseif tag == 'combodigit1Timer' then
		doTweenAlpha('combodigit1Alpha', 'combodigit1', 0, 0.5);
	elseif tag == 'combodigit2Timer' then
		doTweenAlpha('combodigit2Alpha', 'combodigit2', 0, 0.5);
	end
end

function onGameOver()
	if resetHideHud then
		setPropertyFromClass('ClientPrefs', 'hideHud', false);
	end
end

function onEndSong()
	if resetHideHud then
		setPropertyFromClass('ClientPrefs', 'hideHud', false);
	end
end
function onPause()
	if resetHideHud then
		setPropertyFromClass('ClientPrefs', 'hideHud', false);
	end
end

function onResume() -- lol put it back on
if resetHideHud then
setPropertyFromClass('ClientPrefs', 'hideHud', true);
	end
end
