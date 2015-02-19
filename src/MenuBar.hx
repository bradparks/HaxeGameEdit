package ;

import openfl.text.Font;
import openfl.text.TextField;
import openfl.display.Sprite;
import openfl.display.Bitmap;
import openfl.Assets;
import openfl.events.Event;
import openfl.text.TextFormat;
import openfl.text.TextFieldAutoSize;
import openfl.Lib;

class MenuBar extends Sprite
{
	private var _background:Bitmap;
	private var _title:TextField;
	private var _items:Array<MenuBarItem> = [];

	// expose the TextField
	public var Text(get, set):String;
	private function get_Text() { 
		return _title.text; 
	}
	private function set_Text(Text) { 
		return _title.text = Text; 
	}

	public function new() 
	{
		super();
		
		 //the init prepare everything
		init();

		// the constructor add to stage the stuff
		addEventListener(Event.ADDED_TO_STAGE, constructor);
	}
	
	private function init():Void
	{
		_background = new Bitmap(Assets.getBitmapData("img/TopBar.png"));
		_title = new TextField();
		_title.defaultTextFormat = Fonts.GetFormat("main-bold", 16, 0xFFFFFF);
		_title.autoSize = TextFieldAutoSize.LEFT;
		_title.embedFonts = true;
		_title.selectable = true;
		_title.wordWrap = false;
		_title.border = false;
		_title.x = 30;
		_title.y = 15;
		
		_background.width = Lib.current.stage.stageWidth;
		//_background.height = 48;
		_background.x = 0;
		_background.y = 0;
	}
	
	private function constructor(e:Event):Void
	{
		removeEventListener(Event.ADDED_TO_STAGE, constructor);

		addChild(_background);
		addChild(_title);
		//trace("Menu Bar children: " + numChildren);
		
		redraw();
	}
	
	private function redraw():Void
	{
		for (item in _items)
		{
			var obj:MenuBarItem = item;
			obj.x = _items.indexOf(item) * 48 + _title.width;
			obj.y = 0;
			addChild(obj);
		}
	}
	
}