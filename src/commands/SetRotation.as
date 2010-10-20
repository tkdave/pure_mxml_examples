package commands
{

	import com.bumpslide.command.CommandEvent;
	import com.bumpslide.tween.FTween;

	/**
	 * Turn
	 *
	 * @author David Knape
	 */
	public class SetRotation extends TurtleInstruction
	{
		public var val:Number = 0;
		
		override public function execute( event:CommandEvent=null ):void
		{
			FTween.stopTweening( turtle, 'rotation' );
			turtle.rotation = val;
			
			super.execute( event );
		}

	}
}
