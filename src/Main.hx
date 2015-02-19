package ;

import openfl.display.Sprite;
import openfl.events.Event;
import openfl.Lib;

class Main extends Sprite 
{
	
	public function new() 
	{
		super();	
		
		Lib.current.stage.addChild(new MainScene());
		trace("Stage children: " + stage.numChildren);
	}
}
