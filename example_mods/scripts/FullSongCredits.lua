--[[
CREDITS :yippee:

omotashi: Made the script (https://twitter.com/omotashii)
legole0: Helped me make the base script when I started from scratch (https://twitter.com/legole0)
Piggyfriend1792: The OG Script from the Monday Night Monsterin' Mod that I used for making the thing show up (https://twitter.com/piggyfriend1792)
DEAD SKULLXX: Requested me to add Artist and Charter Credits 
--]]



local songdata = {
--yes i used the pico week bc i didnt wanna interfere with the old version
    ['Scientifical'] = {
    'Scientifical', -- Song Name [1]
    'CharlesCatYT', -- Composer [2]
    '5', --  Length for onscreen [3]
    'CharlesCatYT and Isaiah Mods', -- Artist [4]
    'Aster', -- Charter [5]
    },

    ['Crazy'] = {
        'Crazy',
        'Maicon',
        '5',
        'Isaiah Mods',
        'Maicon',
    },

    ['Narration'] = {
        'Narration',
        'N/A',
        '5',
        'Isaiah Mods and',
        'N/A',
    },    

    ['Terrene'] = {
        'Terrene',
        'N/A',
        '5',
        'Isaiah Mods and',
        'N/A',
    },
    
   ['Hazardous'] = {
    'Hazardous', -- Song Name [1]
    'Vencerist', -- Composer [2]
    '5', --  Length for onscreen [3]
    'N/A', -- Artist [4]
    'N/A', -- Charter [5]
    },

    ['Finger Cut'] = {
        'Finger Cut',
        'Isaiah Mods',
        '5',
        'N/A',
        'N/A',
    },

    ['Martian'] = {
        'Martian',
        'N/A',
        '5',
        'N/A',
        'N/A',
    },   
    
 ['Explanation'] = {
    'Explanation', -- Song Name [1]
    'N/A', -- Composer [2]
    '5', --  Length for onscreen [3]
    'N/A', -- Artist [4]
    'N/A', -- Charter [5]
    },

    ['Extraterrestrial'] = {
        'Extraterrestrial',
        'N/A',
        '5',
        'N/A',
        'N/A',
    },

    ['Someone Smarter'] = {
        'Someone Smarter',
        'N/A',
        '5',
        'N/A',
        'N/A',
    },   

   ['Brainy'] = {
    'Brainy', -- Song Name [1]
    'N/A', -- Composer [2]
    '5', --  Length for onscreen [3]
    'N/A', -- Artist [4]
    'N/A', -- Charter [5]
    },

    ['Factual'] = {
        'Factual',
        'N/A',
        '5',
        'N/A',
        'N/A',
    },

['Knowledge'] = {
    'Knowledge', -- Song Name [1]
    'CharlesCatYT', -- Composer [2]
    '5', --  Length for onscreen [3]
    'Isaiah Mods and', -- Artist [4]
    'CharlesCatYT', -- Charter [5]
    },

    ['Glitcher'] = {
        'Glitcher',
        'N/A',
        '5',
        'N/A',
        'N/A',
    },

    ['Bob'] = {
    'Bob', -- Song Name [1]
    'N/A', -- Composer [2]
    '5', --  Length for onscreen [3]
    'N/A', -- Artist [4]
    'N/A', -- Charter [5]
    },

    ['Scar'] = {
        'Scar',
        'N/A',
        '5',
        'N/A',
        'N/A',
    },

    ['Cloned'] = {
        'Cloned',
        'N/A',
        '5',
        'N/A',
        'N/A',
    },
    
 ['Infographic'] = {
    'Infographic', -- Song Name [1]
    'oxiqa', -- Composer [2]
    '5', --  Length for onscreen [3]
    'N/A', -- Artist [4]
    'N/A', -- Charter [5]
    },

    ['Hypothetical'] = {
        'Hypothetical',
        'N/A',
        '5',
        'N/A',
        'N/A',
    },
        
  ['Super'] = {
    'Super', -- Song Name [1]
    'N/A', -- Composer [2]
    '5', --  Length for onscreen [3]
    'N/A', -- Artist [4]
    'N/A', -- Charter [5]
    },

    ['Top Ten'] = {
        'Top Ten',
        'N/A',
        '5',
        'N/A',
        'N/A',
    },

    ['Life Hack'] = {
        'Life Hack',
        'N/A',
        '5',
        'N/A',
        'N/A',
    },
    
    ['Super'] = {
    'Super', -- Song Name [1]
    'N/A', -- Composer [2]
    '5', --  Length for onscreen [3]
    'N/A', -- Artist [4]
    'N/A', -- Charter [5]
    },

    ['Top Ten'] = {
        'Top Ten',
        'N/A',
        '5',
        'N/A',
        'N/A',
    },

    ['Life Hack'] = {
        'Life Hack',
        'N/A',
        '5',
        'N/A',
        'N/A',
    },
    
    ['Drawn'] = {
    'Drawn', -- Song Name [1]
    'N/A', -- Composer [2]
    '5', --  Length for onscreen [3]
    'N/A', -- Artist [4]
    'N/A', -- Charter [5]
    },

    ['Love Interest'] = {
        'Love Interest',
        'N/A',
        '5',
        'N/A',
        'N/A',
    },

    ['Pencil'] = {
        'Pencil',
        'N/A',
        '5',
        'N/A',
        'N/A',
    },
    
    ['Jesus Lover'] = {
    'Jesus Lover', -- Song Name [1]
    'Maicon', -- Composer [2]
    '5', --  Length for onscreen [3]
    'Isaiah Mods and', -- Artist [4]
    'Maicon', -- Charter [5]
    },

    ['Love Of God'] = {
        'Love Of God',
        'N/A',
        '5',
        'N/A',
        'N/A',
    },
    
    ['Fuzz'] = {
    'Fuzz', -- Song Name [1]
    'N/A', -- Composer [2]
    '5', --  Length for onscreen [3]
    'N/A', -- Artist [4]
    'N/A', -- Charter [5]
    },

    ['Nutty'] = {
        'Nutty',
        'N/A',
        '5',
        'N/A',
        'N/A',
    },

    ['Danger'] = {
        'Danger',
        'N/A',
        '5',
        'N/A',
        'N/A',
    },
    
    ['Trampoline'] = {
    'Trampoline', -- Song Name [1]
    'Isaiah Mods', -- Composer [2]
    '5', --  Length for onscreen [3]
    'Isaiah Mods and', -- Artist [4]
    'N/A', -- Charter [5]
    },

    ['Brew'] = {
        'Brew',
        'N/A',
        '5',
        'N/A',
        'N/A',
    },

    ['Call'] = {
    'Call', -- Song Name [1]
    'Maicon', -- Composer [2]
    '5', --  Length for onscreen [3]
    'N/A', -- Artist [4]
    'Maicon', -- Charter [5]
    },

    ['Ask'] = {
        'Ask',
        'N/A',
        '5',
        'N/A',
        'N/A',
    },
    
 ['ChiVi'] = {
    'ChiVi', -- Song Name [1]
    'Maicon', -- Composer [2]
    '5', --  Length for onscreen [3]
    'Isaiah Mods', -- Artist [4]
    'Maicon', -- Charter [5]
    },

    ['Rope Struck'] = {
        'Crazy',
        'Maicon',
        '5',
        'Isaiah Mods',
        'Maicon',
    },

    ['Popular Path'] = {
        'Narration',
        'N/A',
        '5',
        'Isaiah Mods and',
        'N/A',
    },    

    ['Cringe'] = {
        'Cringe',
        'N/A',
        '5',
        'N/A',
        'N/A',
    },

    ['Logical'] = {
        'Logical',
        'N/A',
        '5',
        'N/A',
        'N/A',
    },
    
    ['Fulmination'] = {
    'Fulmination', -- Song Name [1]
    'Banana B)', -- Composer [2]
    '5', --  Length for onscreen [3]
    'Isaiah Mods', -- Artist [4]
    'idk who', -- Charter [5]
    },

    ['Schooled'] = {
        'Schooled',
        'AmongBoy',
        '5',
        'Isaiah Mods',
        'AmongBoy',
    },

    ['Hornstromp'] = {
        'Hornstromp',
        'sibottle',
        '5',
        'Isaiah Mods',
        'idk who',
    },    
    

-- Replace this data with your songs and the song composer. 
-- The song name in the [] MUST be the same song in the JSON file
-- The Next two are just string values, have fun :3
}

local offsetX = 10
local offsetY = 500
local objWidth = 500


function ifExists(table, valuecheck) -- This stupid function stops your game from throwing up errors when you play a main week song thats not in the Song Data Folder
    if table[valuecheck] then
        return true
    else
        return false
    end
end


function onCreatePost() -- This creates all the placeholder shit B) ((THIS PART OF THE SCRIPT WAS MADE BY PIGGY))
    luaDebugMode = true

    makeLuaSprite('creditBox', 'empty', 0 - objWidth, offsetY)
    makeGraphic('creditBox', objWidth, 150, '000000')
    setObjectCamera('creditBox', 'other')
    setProperty("creditBox.alpha", 0.7)
    addLuaSprite('creditBox', true)

    makeLuaText('creditTitle', 'PlaceholderTitle', objWidth, offsetX - objWidth, offsetY+0)
    setTextSize('creditTitle', 45)
    setTextAlignment('creditTitle', 'left')
    setObjectCamera('creditTitle', 'other')
    addLuaText("creditTitle",true)

    makeLuaText('creditComposer', 'PlaceholderComposer', objWidth, offsetX - objWidth, offsetY+45)
    setTextSize('creditComposer', 30)
    setTextAlignment('creditComposer', 'left')
    setObjectCamera('creditComposer', 'other')
    addLuaText("creditComposer",true)

    makeLuaText('creditArtist', 'PlaceholderArtist', objWidth, offsetX - objWidth, offsetY+80)
    setTextSize('creditArtist', 30)
    setTextAlignment('creditArtist', 'left')
    setObjectCamera('creditArtist', 'other')
    addLuaText("creditArtist",true)

    makeLuaText('creditCharter', 'PlaceholderCharter', objWidth, offsetX - objWidth, offsetY+115)
    setTextSize('creditCharter', 30)
    setTextAlignment('creditCharter', 'left')
    setObjectCamera('creditCharter', 'other')
    addLuaText("creditCharter",true)

    -- If you dont NOT want the art and charter credits (or a mix of two), the value used in the old version is:
    -- offsetY+25 for creditTitle
    -- offsetY+80 for the other credit (be it Composer, Charting, or Art)
end


function onSongStart()

 songExists = ifExists(songdata, songName) -- Checks to see if song exists

 if songExists == true then
    local curSongTable = songdata[songName]
    setTextString('creditTitle', curSongTable[1]) -- Sets the actual things
    setTextString('creditComposer', "Song: "..curSongTable[2])
    setTextString('creditArtist', "Visuals: "..curSongTable[4])
    setTextString('creditCharter', "Charting: "..curSongTable[5])

    --Tweens--
    doTweenX("creditBoxTween", "creditBox", getProperty("creditBox.x") + objWidth, 1, "expoOut")
    doTweenX("creditTitleTween", "creditTitle", getProperty("creditTitle.x") + objWidth, 1, "expoOut")
    doTweenX("creditArtistTween", "creditArtist", getProperty("creditArtist.x") + objWidth, 1, "expoOut")
    doTweenX("creditComposerTween", "creditComposer", getProperty("creditComposer.x") + objWidth, 1, "expoOut")
    doTweenX("creditCharterTween", "creditCharter", getProperty("creditCharter.x") + objWidth, 1, "expoOut")
    runTimer("creditDisplay",curSongTable[3],1)
 else

    

 end
end

function onTimerCompleted(timerName)

    if timerName == "creditDisplay" then
        doTweenX("creditBoxTween", "creditBox", getProperty("creditBox.x") - objWidth, 0.5, "sineIn")
        doTweenX("creditTitleTween", "creditTitle", getProperty("creditTitle.x") - objWidth, 0.5, "sineIn")
        doTweenX("creditComposerTween", "creditComposer", getProperty("creditComposer.x") - objWidth, 0.5, "sineIn")
        doTweenX("creditArtistTween", "creditArtist", getProperty("creditArtist.x") - objWidth, 0.5, "sineIn")
        doTweenX("creditCharterTween", "creditCharter", getProperty("creditCharter.x") - objWidth, 0.5, "sineIn")
    end

end