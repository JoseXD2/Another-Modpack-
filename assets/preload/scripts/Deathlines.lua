finishedGameover = false;
startedPlaying = false;

function onGameOver()
    soundFadeIn(nil, 4, 0.2, 0.2);
    math.randomseed(os.time());
    soundName = string.format('VOICELINE%i', math.random(1, 6));
    playSound(soundName, 2, 'VoicelineSND');
    startedPlaying = true;
	setPropertyFromClass('flixel.FlxG', 'music.volume', 0.2);
	return Function_Continue;
end

function onGameOverConfirm(reset)
	finishedGameover = true;
end

function onSoundFinished(tag)
	if tag == 'VoicelineSND' and not finishedGameover then
		soundFadeIn(nil, 4, 0.2, 1);
	end
end