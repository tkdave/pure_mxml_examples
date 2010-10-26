package turtle.commands
{

	import com.bumpslide.command.CommandEvent;

	/**
	 * Pen down
	 *
	 * @author David Knape
	 */
	public class PenDown extends TurtleInstruction
	{
		
		override public function execute( event:CommandEvent=null ):void
		{
			turtle.isPenDown = true;
			
			super.execute( event );
		}

	}
}
