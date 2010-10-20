package commands
{

	import com.bumpslide.command.CommandEvent;
	import com.bumpslide.tween.FTween;

	/**
	 * Turn
	 *
	 * @author David Knape
	 */
	public class Turn extends TurtleInstruction
	{
		
		public var angle:Number = 90;

		override public function execute( event:CommandEvent=null ):void
		{
			FTween.ease( turtle, 'rotation', turtle.rotation + angle, tweenFactor, { delay: delay, onComplete: notifyComplete});
		}

	}
}
