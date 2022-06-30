function opponentNoteHit() -- health draining mechanic
	health = getProperty('health')
    	if getProperty('health') > 0.2 then
        setProperty('health', health-0.015);
  end
end