package commands
{

	import com.bumpslide.command.ICommand;

	import flash.display.Sprite;

	/**
	 * ITurtleInstruction
	 *
	 * @author David Knape
	 */
	public interface ITurtleInstruction extends ICommand
	{
		function set turtle( t:Sprite ):void;
		function get turtle() : Sprite;
	}
}
