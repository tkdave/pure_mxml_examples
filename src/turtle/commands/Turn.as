package turtle.commands
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
			
			FTween.smooth( turtle, 'rotation', turtle.rotation + angle, tweenFactor, 90, 
				{ updateDelay: 10, delay: delay, onComplete: notifyComplete});
			
			
		}

	}
}
