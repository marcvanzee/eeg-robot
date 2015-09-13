package {
	import flash.display.DisplayObject;
   	import flash.events.*;

   	public class Event_Example extends DisplayObject {
     	private var child: DisplayObject = new DisplayObject ();

    	// register the listener function
    	public function Event_Handle_Example() {
       		addChild(child);
       		child.addEventListener(KeyboardEvent.KEY_UP, keyHandlerfunction);
    	}

   		// listener funtion
   		private function keyHandlerfunction (event:KeyboardEvent):void {
      		trace("keyHandlerfunction: " + event.keyCode);
    	}
	}
}
