--[[ Lua code. See documentation: https://api.tabletopsimulator.com/ --]]

--[[ The onLoad event is called after the game save finishes loading. --]]
function onLoad()
    --[[ print('onLoad!') --]]
end

--[[ The onUpdate event is called once per frame. --]]
function onUpdate()
    --[[ print('onUpdate loop!') --]]
end

MusicPlayer.setCurrentAudioclip({
    url="https://steamusercontent-a.akamaihd.net/ugc/17552812836976406/1670C0F7E42ABD1D7D710E84B137B5EF2CE6AA32/",
    title="Ancient Voices"})

MusicPlayer.play()