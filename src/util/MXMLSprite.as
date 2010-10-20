package util {

	import flash.display.DisplayObject;
	import flash.display.Sprite;


	// mxml child nodes will get passed to a setter called children
	[DefaultProperty(name='children')]


	/**
	 * Simple Sprite class that supports adding children via MXML
	 *
	 * @author David Knape
	 */
	public class MXMLSprite extends Sprite
	{
		
		public function set children(mxmlChildNodes : Array) : void {
			
			for each( var child:* in mxmlChildNodes ) {
					
				if(child is DisplayObject) {
					addChild( child );
				}
			}
		}

		
	}
	
	
}
