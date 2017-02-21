import haxe.Constraints.Function;
import haxe.extern.Rest;
import lua.Table;

class Util
{
	/**
	 * Serves as a wrapper for Lua methods with multiple return values,
	 * returning a numerically indexed lua table containing the return
	 * values.
	 * 
	 * Must receive a method that returns multiple values, followed
	 * by any parameters to be passed to that method
	 */
	public static var wrap: Function -> Rest<Dynamic> -> Table<Int, Dynamic> = untyped __lua__(
		'function(f, ...) return { f(...) } end');
}