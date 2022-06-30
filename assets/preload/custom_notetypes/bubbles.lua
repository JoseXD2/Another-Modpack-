function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'bubbles' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'arrows-bubbles'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.4');
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'bubbles' then
		playSound('CollectedBubble', 0.6);
	end
end