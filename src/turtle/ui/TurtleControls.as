package
turtle.ui{

	import com.bumpslide.ui.skin.defaults.Style;
	import turtle.ui.skins.TurtleControlsSkin;

	import com.bumpslide.ui.Component;

	/**
	 * M05_TurtleCommandApp
	 *
	 * @author David Knape
	 */
	public class TurtleControls extends Component
	{

		override protected function postConstruct():void
		{
			super.postConstruct();
			
			if(skin==null && skinClass==null) {
				skinClass = TurtleControlsSkin;
			}

			Style.BUTTON_CORNER_RADIUS = 3;
		}

	}
}
