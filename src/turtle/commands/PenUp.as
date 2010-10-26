package turtle.commands
{

	import com.bumpslide.command.CommandEvent;

	/**
	 * Pick up the pen
	 *
	 * @author David Knape
	 */
	public class PenUp extends TurtleInstruction
	{
		
		override public function execute( event:CommandEvent=null ):void
		{
			turtle.isPenDown = false;
			
			super.execute( event );
		}

	}
}
