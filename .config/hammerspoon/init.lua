-- hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()

--       local alert = function(text)
--          hs.notify.new({title="Hammerspoon", informativeText=text}):send()
--       end

--       local speakers   = hs.audiodevice.findOutputByName("Audioengine HD6")
--       local headphones = hs.audiodevice.findOutputByName("Bowers & Wilkins PX")
--       local laptop     = hs.audiodevice.findOutputByName("Built-in Output")

--       if speakers and headphones then

--       elseif speakers then
--          laptop:setDefaultOutputDevice()
--          alert("Speakers connected, no headphones, setting default audio device")
--       elseif headphones then

--       else

--       end

--       local device = hs.audiodevice.current()
--       --if speakers ~= nil then

--       --end


-- end)
