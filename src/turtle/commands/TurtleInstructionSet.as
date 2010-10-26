package turtle.commands
{

	import turtle.core.ITurtle;

	import com.bumpslide.command.CommandEvent;
	import com.bumpslide.command.CommandQueue;
	import com.bumpslide.command.ICommand;

	/**
	 * TurtleInstructionSet
	 *
	 * @author David Knape
	 */
	public class TurtleInstructionSet extends CommandQueue implements ITurtleInstruction
	{
		private var _turtle:ITurtle;
		
		/**
		 *  Inject turtle into each command just before it is run
		 */
		override protected function doExecute( command:ICommand, event:CommandEvent = null ):void
		{
			if(command is ITurtleInstruction) {
				(command as ITurtleInstruction).turtle = turtle;
			}
			
			super.doExecute( command, event );
		}


		public function get turtle():ITurtle {
			return _turtle;
		}


		public function set turtle( turtle:ITurtle ):void {
			_turtle = turtle;
		}

	}
}
