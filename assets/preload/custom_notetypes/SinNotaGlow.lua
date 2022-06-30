function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'SinNotaGlow' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'SINGlow_assets');
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
		end
	end
	--debugPrint('Script started!')
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'SinNotaGlow' then
		setProperty('health', -1);
	end
end


function onUpdatePost(elapsed)
   for a = 0, getProperty('notes.length') - 1 do
      local strumTime = getPropertyFromGroup('notes', a, 'strumTime');
      local noteData = getPropertyFromGroup('notes', a, 'noteData');
      local sus = getPropertyFromGroup('notes', a, 'isSustainNote');
      local fixOffset = (getPropertyFromClass("PlayState", "isPixelState") and 30 or getPropertyFromClass("Notes", "swagWidth") / 2)
      if getPropertyFromGroup('notes', a, 'noteType') == noteName then
         if (strumTime - getSongPosition()) < 1300 / scrollSpeed + 100 then
               setPropertyFromGroup("notes", a, "offsetX", lerp(getPropertyFromGroup("notes", a, "offsetX"), 0 + (sus and fixOffset or 0), elapsed * (6 * scrollSpeed)))
         end

      end
   end
end

function lerp(a, b, t)
   return a + (b - a) * t
end