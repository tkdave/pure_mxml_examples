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
			
			//turtle.rotation += angle;
			
			//super.execute( event );
			
			FTween.smooth( turtle, 'rotation', turtle.rotation + angle, tweenFactor, 90, { delay: delay, onComplete: notifyComplete});
		}

	}
}
