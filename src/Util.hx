import haxe.extern.Rest;

class Util
{
	/**
	 * Serves as a wrapper for Lua methods with multiple return values,
	 * returning a numberically indexed lua table containing the return
	 * values.
	 * 
	 * Must receive an uncalled Lua method, followed by any
	 * args to be passed to the method
	 */
	public static var wrap: Dynamic -> Rest<Dynamic> -> Dynamic = untyped __lua__(
		'function(f, ...) return { f(...) } end');
}