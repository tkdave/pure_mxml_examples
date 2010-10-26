package turtle.commands
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

		public var value:Number = 0;

		public function SetRotation(val:Number=0)
		{
			value = val;
		}

		override public function execute( event:CommandEvent=null ):void
		{
			FTween.stopTweening( turtle, 'rotation' );
			turtle.rotation = value;
			
			super.execute( event );
		}

	}
}
