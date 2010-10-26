package turtle.commands
{
	/**
	 * Repeat the child commands a number of times
	 *
	 * @author David Knape
	 */
	public class Repeat extends TurtleInstructionSet
	{
		public var times:uint = 2;

		override public function set commands( cmds:Array ):void {
			for (var n:uint = 0; n < times; n++) {
				super.commands = cmds;
			}
		}
	}
}
