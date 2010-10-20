package commands
{

	import com.bumpslide.command.Command;

	import flash.display.Sprite;

	/**
	 * TurtleInstruction
	 *
	 * @author David Knape
	 */
	public class TurtleInstruction extends Command implements ITurtleInstruction
	{
		private var _turtle:Sprite;
		
		public var delay:Number = 0;

		public var tweenFactor:Number = .3;

		public function get turtle():Sprite {
			return _turtle;
		}


		public function set turtle( turtle:Sprite ):void {
			_turtle = turtle;
		}
		
		
	}
}
