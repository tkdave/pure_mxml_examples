package turtle.core
{

	import com.bumpslide.data.BindableModel;

	import flash.events.Event;

	[Event(name="render", type="flash.events.Event")]
	[Event(name="clear", type="flash.events.Event")]
	/**
	 * TurtleModel
	 *
	 * @author David Knape
	 */
	public class TurtleModel extends BindableModel implements ITurtle
	{

		public function TurtleModel()
		{
			clear();
		}


		public function clear():void
		{
			x = 200;
			y = 200;
			rotation = 0;
			isPenDown = true;
			isDragging = false;
			dispatchEvent( new Event( Event.CLEAR ) );
		}


		override public function toString():String
		{
			return '[Turtle(' + [ x, y, rotation, isPenDown ] + ')]';
		}


		public function get rotation():Number {
			return get( 'rotation' );
		}


		public function set rotation( rotation:Number ):void {
			set( 'rotation', rotation );
		}


		public function get x():Number {
			return get( 'x' );
		}


		public function set x( x:Number ):void {
			set( 'x', x );
		}


		public function get y():Number {
			return get( 'y' );
		}


		public function set y( y:Number ):void {
			set( 'y', y );
		}

		public function get isPenDown():Boolean {
			return get( 'isPenDown' );
		}


		public function set isPenDown( isPenDown:Boolean ):void {
			set( 'isPenDown', isPenDown );
		}


		public function get isDragging():Boolean {
			return get( 'isDragging' );
		}


		public function set isDragging( isDragging:Boolean ):void {
			set( 'isDragging', isDragging );
		}


		override protected function notifyChanged():void
		{
			super.notifyChanged();

			dispatchEvent( new Event( Event.RENDER ) );
		}
	}
}
