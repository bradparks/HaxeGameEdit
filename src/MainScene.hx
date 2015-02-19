package ;

import openfl.display.Sprite;
import openfl.events.Event;

class MainScene extends Sprite
{
	
	private var _menuBar:MenuBar;

	public function new() 
	{
		super();
		addEventListener(Event.ADDED_TO_STAGE, init);
	}
	
	private function init(e:Event):Void
	{
		removeEventListener(Event.ADDED_TO_STAGE, init);
		
		_menuBar = new MenuBar();
		_menuBar.Text = "Haxe Game Edit";
		_menuBar.x = 0;
		_menuBar.y = 0;
		
		addChild(_menuBar);
		//trace("Main Scene children: " + numChildren);
	}
	
}