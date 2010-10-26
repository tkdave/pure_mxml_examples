package
{

	import com.bumpslide.ui.skin.MovieClipSkin;

	import flash.display.MovieClip;

	/**
	 * TextInputSkin
	 *
	 * @author David Knape
	 */
	dynamic public class TextInputSkin extends MovieClipSkin
	{

		public var background:MovieClip;
		
		public function TextInputSkin()
		{
			super();
			background.buttonMode = true;
		}

	}
}
