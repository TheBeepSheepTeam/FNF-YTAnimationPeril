curentVersion = 0;

local Quotes = {
    "It's AumSum Time!",
    "What if HScript Disappared?",
    "No AumSum?",
    "Thanks to Heli Pro Gamer for the fix!",
    "hi my name is carmen winstead im 17 years old",
    "No OpenFL?",
    "MOM GET THE CAMERA",
    "YouTube is gonna copyright strike you if you die!",
    "damn bro you got the whole squad laughing.",
    "DONT PUT AUMSUM IN DALL E WORST MISTAKE OF MY LIFE",
    "oh noes arnold got his finger cut",
    "Hey there! Welcome to Life Noggin",
    "the bobs are plentiful",
    "Do you really expect me to type something clever in this script?",
    "what a loser, getting his mod cancelled",
    "This is YOUR Daily Does of Internet",
    "ah hell nah brainard fell in niagra falls and he die",
    "I've over dosed on ketamine and I'm going to die",
    "Oh, AumSum.",
    "Earth, let me explain.",
    "*casually lifts down his mask* Hi. - Dream, October 2022"
    "hell nah aumsum have merch (its in www.aumsum.com)",
    "watch yo tone mf",
    "woah. I'm a rapper! - gametoons player",
    "Don't swear on your YouTube Video or else Susan Wojkcicki will come to your house",
    "Copyright Striked",
    "This video is not available on YouTube",
    "Demonitized",
    "No gold play button?"
    
}

function onCreate()
   bit = string.gsub(version,"%.","")

   curentVersion = tonumber(bit)
end


function onCreatePost()
    makeLuaText('songText', songName .. ' - ' .. getProperty('storyDifficultyText') .. ' | ' .. Quotes[getRandomInt(1, 20)], 0, 2, 552);
    setTextAlignment('songText', 'left');
    setTextSize('songText', 15);
    setTextBorder('songText', 1, '000000');
    setObjectCamera('songText', 'camHUD');
    addLuaText('songText');
end
