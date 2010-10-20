package commands
{

	import com.bumpslide.command.CommandEvent;
	import com.bumpslide.tween.FTween;

	/**
	 * Forward
	 *
	 * @author David Knape
	 */
	public class Forward extends TurtleInstruction
	{
				
		public var distance:Number = 20;

		public var speed:Number = 50;

		private var _pending:int = 0;
		
		public var ease:String = "";
		
		override public function execute( event:CommandEvent=null ):void
		{
			
			var a:Number = turtle.rotation / 180 * Math.PI;
			
			var tx:Number = turtle.x + Math.cos(a) * distance;
			var ty:Number = turtle.y + Math.sin(a) * distance;

			_pending = 2;
			
			
			switch( ease ) {
				
				case 'in':
					FTween.easeIn( turtle, 'x', tx, tweenFactor, { delay:delay, onComplete:handleTweenComplete } );
					FTween.easeIn( turtle, 'y', ty, tweenFactor, { delay:delay, onComplete:handleTweenComplete } );
					break;
				
				case 'out':
					FTween.easeOut( turtle, 'x', tx, tweenFactor, { delay:delay, onComplete:handleTweenComplete } );
					FTween.easeOut( turtle, 'y', ty, tweenFactor, { delay:delay, onComplete:handleTweenComplete } );
					break;
					
				default:
					FTween.smooth( turtle, 'x', tx, tweenFactor, speed, { delay:delay, onComplete:handleTweenComplete } );
					FTween.smooth( turtle, 'y', ty, tweenFactor, speed, { delay:delay, onComplete:handleTweenComplete } );		
			}
			
			FTween.smooth( turtle, 'x', tx, tweenFactor, speed, { delay:delay, onComplete:handleTweenComplete } );
			FTween.smooth( turtle, 'y', ty, tweenFactor, speed, { delay:delay, onComplete:handleTweenComplete } );
		}
	
		private function handleTweenComplete():void {
			if(--_pending==0) notifyComplete();
		}
	}
}
