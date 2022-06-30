local allowCountdown=false;
function onStartCountdown()
  if not allowCountdown and isFreePlay and not seenCutscene then
    startVideo('sans/1');
    allowCountdown=true;
    return Function_Stop;
  end
  return Function_Continue;
  end