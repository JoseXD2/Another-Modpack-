local noteName = "Swap Note"

function onCreatePost()
addLuaScript('custom_notetypes/PapsNoteSplash')
end

function onCreate()
   for a = 0, getProperty('unspawnNotes.length') - 1 do
      local strumTime = getPropertyFromGroup('unspawnNotes', a, 'strumTime');
      local noteData = getPropertyFromGroup('unspawnNotes', a, 'noteData');
      local sus = getPropertyFromGroup('unspawnNotes', a, 'isSustainNote');
      if getPropertyFromGroup('unspawnNotes', a, 'noteType') == noteName then         
         setPropertyFromGroup("unspawnNotes", a, "offsetX", getRandomInt(100,100, 100) * 10)
         if sus then 
            setPropertyFromGroup("unspawnNotes", a, "offsetX", getPropertyFromGroup('unspawnNotes', a, 'prevNote.offsetX'))
         end
      end
   end
end

function onUpdate(elapsed)
    for i = 0, getProperty('notes.length') - 1 do
        if getPropertyFromGroup('notes', i, 'noteType') == 'Swap Note' then
            setPropertyFromGroup('notes', i, 'y', getPropertyFromGroup('notes', i, 'y') * 1.3);
        end
    end
 end

function onUpdatePost(elapsed)
   for a = 0, getProperty('notes.length') - 1 do
      local strumTime = getPropertyFromGroup('notes', a, 'strumTime');
      local noteData = getPropertyFromGroup('notes', a, 'noteData');
      local sus = getPropertyFromGroup('notes', a, 'isSustainNote');
      local fixOffset = (getPropertyFromClass("PlayState", "isPixelState") and 30 or getPropertyFromClass("Notes", "swagWidth") / 3)
      if getPropertyFromGroup('notes', a, 'noteType') == noteName then
         if (strumTime - getSongPosition()) < 1300 / scrollSpeed + 100 then
               setPropertyFromGroup("notes", a, "offsetX", lerp(getPropertyFromGroup("notes", a, "offsetX"), 0 + (sus and fixOffset or 0), elapsed * (3 * scrollSpeed)))
         end

      end
   end
end

function lerp(a, b, t)
   return a + (b - a) * t
end