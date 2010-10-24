package commands
{

	import vo.TurtleModel;

	import com.bumpslide.command.ICommand;

	/**
	 * Command that gets applied to a turtle
	 *
	 * @author David Knape
	 */
	public interface ITurtleInstruction extends ICommand
	{
		function set turtle( t:TurtleModel ):void;
		function get turtle() : TurtleModel;
	}
}
