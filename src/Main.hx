package ;
 
import openfl.display.Sprite;
import openfl.events.Event;
 
class Main extends Sprite
{
       
        public function new()
        {
                super();
                addEventListener(Event.ADDED_TO_STAGE, added);
        }
       
        private function added(e:Event):Void
        {
                removeEventListener(Event.ADDED_TO_STAGE, added);
                addChild(new MainScene());
		//trace("Stage children: " + stage.numChildren);
        }

        
}