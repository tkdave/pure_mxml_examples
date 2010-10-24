package commands
{

	import vo.TurtleModel;

	import com.bumpslide.command.Command;

	/**
	 * TurtleInstruction
	 *
	 * @author David Knape
	 */
	public class TurtleInstruction extends Command implements ITurtleInstruction
	{
		private var _turtle:TurtleModel;
		
		public var delay:Number = 0;

		public var tweenFactor:Number = .5;

		public function get turtle():TurtleModel {
			return _turtle;
		}

		public function set turtle( turtle:TurtleModel ):void {
			_turtle = turtle;
		}
		
		
	}
}
