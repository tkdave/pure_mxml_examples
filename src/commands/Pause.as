package commands
{

	import com.bumpslide.command.CommandEvent;
	import com.bumpslide.util.Delegate;


	/**
	 * Pause
	 *
	 * @author David Knape
	 */
	public class Pause extends TurtleInstruction
	{
		
		public var time:Number = 1000;

		override public function execute( event:CommandEvent=null ):void
		{
			Delegate.callLater( time, notifyComplete );
		}

	}
}
