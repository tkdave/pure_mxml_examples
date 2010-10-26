package turtle.commands
{

	import com.bumpslide.command.CommandEvent;
	import com.bumpslide.tween.FTween;

	/**
	 * Reset the turtle and clear the canvas
	 *
	 * @author David Knape
	 */
	public class Reset extends TurtleInstruction
	{
		override public function execute( event:CommandEvent=null ):void
		{
			FTween.stopTweening( turtle );
			turtle.clear();
		}

	}
}
