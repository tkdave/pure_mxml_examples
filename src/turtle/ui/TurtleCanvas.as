package turtle.ui
{

	import turtle.core.ITurtle;
	import turtle.core.ITurtleAware;
	import turtle.ui.skins.TurtleCanvasSkin;

	import com.bumpslide.events.DragEvent;
	import com.bumpslide.tween.FTween;
	import com.bumpslide.ui.Component;
	import com.bumpslide.ui.behavior.DragBehavior;

	import flash.display.Sprite;
	import flash.events.Event;

	/**
	 * TurtleCanvas
	 *
	 * @author David Knape
	 */
	public class TurtleCanvas extends Component implements ITurtleAware
	{

		private var _turtle:ITurtle;

		public var turtleSprite:Sprite;

		private var dragControl:DragBehavior;

		public function set turtle( t:ITurtle ):void {
			_turtle = t;

			turtle.addEventListener( Event.CLEAR, clear );
			turtle.addEventListener( Event.RENDER, render );

			turtle.clear();
		}


		public function get turtle():ITurtle {
			return _turtle;
		}


		override protected function postConstruct():void
		{
			super.postConstruct();

			if (skin == null && skinClass == null) {
				skinClass = TurtleCanvasSkin;
			}
		}


		protected function render( event:Event = null ):void
		{
			if (turtle.isPenDown && !turtle.isDragging) {
				graphics.lineTo( turtle.x, turtle.y );
			}
		}


		protected function clear( event:Event = null ):void
		{
			graphics.lineStyle( 2, 0x880000, 1.0 );
			graphics.clear();

			FTween.stopTweening( turtleSprite );

			turtle.rotation = 0;
			turtle.x = 200;
			turtle.y = 200;
			turtle.isPenDown = true;

			graphics.clear();
			graphics.lineStyle( 3, 0x880000 );
			graphics.moveTo( turtle.x, turtle.y );

			render();
		}


		override protected function initSkin():void
		{
			super.initSkin();

			if (dragControl) dragControl.remove();

			if (turtleSprite && turtle) turtle.unbind( turtleSprite );

			turtleSprite = getSkinPart( 'turtleSprite' );

			// Make the turtle draggable
			dragControl = DragBehavior.init( turtleSprite );

			turtle.bind( 'x', turtleSprite );
			turtle.bind( 'y', turtleSprite );
			turtle.bind( 'rotation', turtleSprite );

			turtleSprite.addEventListener( DragEvent.EVENT_DRAG_START, handleDragStart );
			turtleSprite.addEventListener( DragEvent.EVENT_DRAG_STOP, handleDragStop );
		}


		private function handleDragStop( event:DragEvent ):void
		{
			graphics.moveTo( turtleSprite.x, turtleSprite.y );
			turtle.isDragging = false;
			turtle.x = turtleSprite.x;
			turtle.y = turtleSprite.y;
		}


		private function handleDragStart( event:DragEvent ):void
		{
			FTween.stopTweening( turtle, 'rotation' );
			turtle.rotation = 0;
			turtle.isDragging = true;
		}
	}
}
