package turtle.commands
{

	import turtle.core.ITurtle;

	import com.bumpslide.command.Command;

	/**
	 * TurtleInstruction
	 *
	 * @author David Knape
	 */
	public class TurtleInstruction extends Command implements ITurtleInstruction
	{
		private var _turtle:ITurtle;
		
		public var delay:Number = 0;

		public var tweenFactor:Number = .5;

		public function get turtle():ITurtle {
			return _turtle;
		}

		public function set turtle( turtle:ITurtle ):void {
			_turtle = turtle;
		}
		
		
	}
}
