package turtle.commands
{

	import turtle.core.ITurtle;

	import com.bumpslide.command.ICommand;

	/**
	 * Command that gets applied to a turtle
	 *
	 * @author David Knape
	 */
	public interface ITurtleInstruction extends ICommand
	{
		function set turtle( t:ITurtle ):void;
		function get turtle() : ITurtle;
	}
}
