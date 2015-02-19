package ;

import openfl.text.Font;
import openfl.text.TextField;
import openfl.display.Sprite;
import openfl.display.Bitmap;
import openfl.Assets;
import openfl.events.Event;
import openfl.text.TextFormat;
import openfl.text.TextFieldAutoSize;

class MenuBar extends Sprite
{
	private var _background:Bitmap;
	private var _title:TextField;
	public var Text:String;
	private var _items:Array<MenuBarItem> = [];

	public function new() 
	{
		super();
		
		addEventListener(Event.ADDED_TO_STAGE, init);
	}
	
	private function init(e:Event):Void
	{
		removeEventListener(Event.ADDED_TO_STAGE, init);
		
		_background = new Bitmap(Assets.getBitmapData("a/img/TopBar.png"));
		_title = new TextField();
		
		_title.x = 0;
		_title.y = 0;
		_title.defaultTextFormat = Fonts.GetFormat("main-bold", 16, 0xFFFFFF);
		_title.text = Text;
		_title.embedFonts = true;
		_title.selectable = false;
		_title.autoSize = TextFieldAutoSize.LEFT;
		_title.height = 48;
		
		_background.width = stage.stageWidth;
		_background.height = 48;
		_background.x = 0;
		_background.y = 0;
		
		addChild(_background);
		addChild(_title);
		trace("Menu Bar children: " + numChildren);
		
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