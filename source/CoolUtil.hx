package;

import flixel.FlxG;
import openfl.utils.Assets;
import lime.utils.Assets as LimeAssets;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import flixel.system.FlxSound;
#if sys
import sys.io.File;
import sys.FileSystem;
#end

import openfl.net.FileReference;

using StringTools;

typedef FileSaveContext = 
{
	var content:String;
	var format:String;
	var fileDefaultName:String;
}

class CoolUtil
{
	public static var defaultDifficulties:Array<String> = [
		'Easy',
		'Normal',
		'Hard'
	];
	public static var defaultDifficulty:String = 'Normal'; //The chart that has no suffix and starting difficulty on Freeplay/Story Mode

	public static var difficulties:Array<String> = [];

	inline public static function quantize(f:Float, snap:Float){
		// changed so this actually works lol
		var m:Float = Math.fround(f * snap);
		trace(snap);
		return (m / snap);
	}
	
		public static function loadUIStuff(sprite:flixel.FlxSprite, ?anim:String) {
		sprite.loadGraphic(Paths.image("yce/uiIcons", "preload"), true, 16, 16);
		var anims = [
			"up", 
			"refresh", 
			"delete", 
			"copy", 
			"paste", 
			"x", 
			"swap", 
			"folder", 
			"play", 
			"edit", 
			"settings", 
			"song", 
			"add", 
			"trophy", 
			"up",
			"down", 
			"lock", 
			"pack"];

		for(k=>a in anims) {
			sprite.animation.add(a, [k], 0, false);
		}
		if (anim != null) sprite.animation.play(anim);
	}

	public static function openFolder(p:String) {
		p = p.replace("/", "\\").replace("\\\\", "\\");
		#if windows
			Sys.command('explorer "$p"');	
		#elseif linux
			Sys.command('nautilus', [p]);	
		#end
	}

	public static function saveFile(settings:FileSaveContext)
	{
		var file = new FileReference();
		file.save(settings.content, settings.fileDefaultName + '.' + settings.format);
	}
	
	public static function getDifficultyFilePath(num:Null<Int> = null)
	{
		if(num == null) num = PlayState.storyDifficulty;

		var fileSuffix:String = difficulties[num];
		if(fileSuffix != defaultDifficulty)
		{
			fileSuffix = '-' + fileSuffix;
		}
		else
		{
			fileSuffix = '';
		}
		return Paths.formatToSongPath(fileSuffix);
	}

	public static function difficultyString():String
	{
		return difficulties[PlayState.storyDifficulty].toUpperCase();
	}

	public static function checkJsonFilePath(song:String, diff:String, diffNum:Int)
	{
		var realJson:Bool = false;
		var jsonPath:String = song + '/' + song + diff;
		var newDiff:String = null;

		#if sys
		#if MODS_ALLOWED
		realJson = FileSystem.exists(Paths.modsJson(jsonPath)) || FileSystem.exists(Paths.json(jsonPath));
		#else
		realJson = FileSystem.exists(Paths.json(jsonPath));
		#end
		#else
		realJson = Assets.exists(Paths.json(jsonPath));
		#end

		if (!realJson)
		{
			if (diff.length > 0) newDiff = '' else newDiff = '-' + CoolUtil.difficulties[diffNum];
		}
		return newDiff;
	}

	inline public static function boundTo(value:Float, min:Float, max:Float):Float {
		return Math.max(min, Math.min(max, value));
	}

	public static function coolTextFile(path:String):Array<String>
	{
		var daList:Array<String> = [];
		#if sys
		if(FileSystem.exists(path)) daList = File.getContent(path).trim().split('\n');
		#else
		if(Assets.exists(path)) daList = Assets.getText(path).trim().split('\n');
		#end

		for (i in 0...daList.length)
		{
			daList[i] = daList[i].trim();
		}

		return daList;
	}
	public static function listFromString(string:String):Array<String>
	{
		var daList:Array<String> = [];
		daList = string.trim().split('\n');

		for (i in 0...daList.length)
		{
			daList[i] = daList[i].trim();
		}

		return daList;
	}
	public static function dominantColor(sprite:flixel.FlxSprite):Int{
		var countByColor:Map<Int, Int> = [];
		for(col in 0...sprite.frameWidth){
			for(row in 0...sprite.frameHeight){
			  var colorOfThisPixel:Int = sprite.pixels.getPixel32(col, row);
			  if(colorOfThisPixel != 0){
				  if(countByColor.exists(colorOfThisPixel)){
				    countByColor[colorOfThisPixel] =  countByColor[colorOfThisPixel] + 1;
				  }else if(countByColor[colorOfThisPixel] != 13520687 - (2*13520687)){
					 countByColor[colorOfThisPixel] = 1;
				  }
			  }
			}
		 }
		var maxCount = 0;
		var maxKey:Int = 0;//after the loop this will store the max color
		countByColor[flixel.util.FlxColor.BLACK] = 0;
			for(key in countByColor.keys()){
			if(countByColor[key] >= maxCount){
				maxCount = countByColor[key];
				maxKey = key;
			}
		}
		return maxKey;
	}

	public static function numberArray(max:Int, ?min = 0):Array<Int>
	{
		var dumbArray:Array<Int> = [];
		for (i in min...max)
		{
			dumbArray.push(i);
		}
		return dumbArray;
	}

	//uhhhh does this even work at all? i'm starting to doubt
	public static function precacheSound(sound:String, ?library:String = null):Void {
		Paths.sound(sound, library);
	}

	public static function precacheMusic(sound:String, ?library:String = null):Void {
		Paths.music(sound, library);
	}

	public static function browserLoad(site:String) {
		#if linux
		Sys.command('/usr/bin/xdg-open', [site]);
		#else
		FlxG.openURL(site);
		#end
	}
}
