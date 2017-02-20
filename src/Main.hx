import oc.Robot;

class Main
{
	public static function main(): Void
	{
		Robot.turnLeft();

		var func: String -> String -> String = untyped __lua__("function(a, b, ...) return a, b, ... end");
		var bar: Dynamic = Util.wrap(func, 'foo', 'bar', 3, 4, 5, 6);
		trace(bar);
	}
}