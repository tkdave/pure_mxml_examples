package util
{
	import flash.display.*;
	
	// mxml child nodes get passed to prop called children
	[DefaultProperty(name='children')]
	public class MXMLSprite extends Sprite
	{

		public function set children( mxmlChildNodes:Array ):void {
			for each ( var child:* in mxmlChildNodes ) {
				if (child is DisplayObject) {
					addChild( child );
				}
			}
		}	}
}
