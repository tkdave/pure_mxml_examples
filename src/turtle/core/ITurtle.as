package turtle.core {

	import com.bumpslide.data.IBindable;

	import flash.events.IEventDispatcher;

	/**
	 * ITurtle
	 *
	 * @author David Knape
	 */
	public interface ITurtle extends IBindable, IEventDispatcher
	{
		function clear():void;

		function get rotation():Number ;

		function set rotation( rotation:Number ):void;

		function get x():Number ;

		function set x( x:Number ):void ;

		function get y():Number;

		function set y( y:Number ):void ;
		
		function get isPenDown():Boolean ;

		function set isPenDown( isPenDown:Boolean ):void;

		function get isDragging():Boolean;

		function set isDragging( isDragging:Boolean ):void;

	}
}
