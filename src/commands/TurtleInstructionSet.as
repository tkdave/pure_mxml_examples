package commands
{

	import com.bumpslide.command.CommandEvent;
	import com.bumpslide.command.CommandQueue;
	import com.bumpslide.command.ICommand;

	import flash.display.Sprite;

	/**
	 * TurtleInstructionSet
	 *
	 * @author David Knape
	 */
	public class TurtleInstructionSet extends CommandQueue implements ITurtleInstruction
	{
		private var _turtle:Sprite;
		
		/**
		 *  Inject turtle into each command just before it is run
		 */
		override protected function doExecute( command:ICommand, event:CommandEvent = null ):void
		{
			if(command is TurtleInstruction) {
				(command as TurtleInstruction).turtle = turtle;
			}
			
			super.doExecute( command, event );
		}


		public function get turtle():Sprite {
			return _turtle;
		}


		public function set turtle( turtle:Sprite ):void {
			_turtle = turtle;
		}

	}
}
