package options;

import flixel.FlxG;
import flixel.util.FlxSave;
import sys.FileSystem;

using StringTools;

class ModOptions extends BaseOptionsMenu {
	private var addedOptions:Array<Option>;
	private var modName:String;

	public function new(mod:String = '') {
		modName = mod;

		title = modName;
		rpcTitle = 'Mod Options Menu'; // for Discord Rich Presence

		var directory:String = modName == '' ? 'mods/options' : 'mods/$modName/options';

		if (FileSystem.exists(directory)) {
			for (file in FileSystem.readDirectory(directory)) {
				var path = haxe.io.Path.join([directory, file]);
				var save:FlxSave = new FlxSave();
				save.bind('options', modName == '' ? 'psychenginemods' : 'psychenginemods/$modName/');

				if (!FileSystem.isDirectory(path) && file.endsWith('.txt')) {
					var optionText:Array<Dynamic> = CoolUtil.coolTextFile(path);
					var optionType:String = optionText[3];
					var defVal:Dynamic = Reflect.field(save.data, optionText[2]);
					var optList:Array<String> = (optionType == 'string') ? optionText[5].split(',') : null;

					if (defVal == null) {
						defVal = optionText[4];
					};

					var option:SoftcodeOption = new SoftcodeOption( // overriding options
						optionText[0], // name
						optionText[1], // description
						optionText[2], // save (a key in which optionText info is stored)
						optionType, // optionText type
						defVal, // default value (might be overwritten depending on what did you set)
						optList // other values (if it's a string option type)
					);

					if (optionType == 'int' || optionType == 'float' || optionType == 'percent') {
						option.displayFormat = '%v';
						option.minValue = optionText[5];
						option.maxValue = optionText[6];
						option.changeValue = optionText[7];
						option.scrollSpeed = optionText[8];
					};

					addOption(option);
				};
			};
		};

		super();
	}

	override function closeState() {
		var save:FlxSave = new FlxSave();
		var dir = (modName == '' ? 'psychenginemods' : 'psychenginemods/$modName/');

		save.bind('options', dir);

		for (option in optionsArray) {
			Reflect.setField(save.data, option.getVariable(), option.getValue());
		}

		save.flush();
		super.closeState();
	};
}