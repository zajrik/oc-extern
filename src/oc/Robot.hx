package oc;
import haxe.extern.EitherType;

@:luaRequire('robot')
extern class Robot
{
	public static function name(): String;

	public static function detect(): DetectResult;
	public static function detectUp(): DetectResult;
	public static function detectDown(): DetectResult;

	public static function inventorySize(): Int;
	public static function select(?slot: Int): Int;
	public static function count(?slot: Int): Int;
	public static function space(?slot: Int): Int;
	
	public static function transferTo(slot: Int, ?count: Int): Bool;

	public static function compareTo(slot: Int): Bool;
	public static function compare(): Bool;
	public static function compareUp(): Bool;
	public static function compareDown(): Bool;

	public static function drop(?count: Int): Bool;
	public static function dropUp(?count: Int): Bool;
	public static function dropDown(?count: Int): Bool;

	public static function suck(?count: Int): Bool;
	public static function suckUp(?count: Int): Bool;
	public static function suckDown(?count: Int): Bool;

	public static function place(?side: EitherType<Sides, Int>, ?sneaky: Bool): PlaceResult;
	public static function placeUp(?side: EitherType<Sides, Int>, ?sneaky: Bool): PlaceResult;
	public static function placeDown(?side: EitherType<Sides, Int>, ?sneaky: Bool): PlaceResult;

	public static function durability(): EitherType<DurabilityResult, DurabilityError>;

	public static function swing(?side: EitherType<Sides, Int>, ?sneaky: Bool): EitherType<Bool, SwingResult>;
	public static function swingUp(?side: EitherType<Sides, Int>, ?sneaky: Bool): EitherType<Bool, SwingResult>;
	public static function swingDown(?side: EitherType<Sides, Int>, ?sneaky: Bool): EitherType<Bool, SwingResult>;

	public static function use(?side: EitherType<Sides, Int>, ?sneaky: Bool, ?duration: Int): EitherType<Bool, UseResult>;
	public static function useUp(?side: EitherType<Sides, Int>, ?sneaky: Bool, ?duration: Int): EitherType<Bool, UseResult>;
	public static function useDown(?side: EitherType<Sides, Int>, ?sneaky: Bool, ?duration: Int): EitherType<Bool, UseResult>;

	public static function forward(): EitherType<Bool, MoveResult>;
	public static function back(): EitherType<Bool, MoveResult>;
	public static function up(): EitherType<Bool, MoveResult>;
	public static function down(): EitherType<Bool, MoveResult>;
	
	public static function turnLeft(): Void;
	public static function turnRight(): Void;
	public static function turnAround(): Void;

	public static function selectTank(): Void;
	public static function tankCount(): Int;
	public static function tankLevel(?tank: Int): Float;
	public static function tankSpace(): Float;
	
	public static function compareFluidTo(tank: Int): Bool;
	public static function transferFluidTo(tank: Int, ?count: Int): Bool;
	public static function compareFluid(): Bool;
	public static function compareFluidUp(): Bool;
	public static function compareFluidDown(): Bool;
	public static function drain(?count: Int)(): Bool;
	public static function drainUp(?count: Int)(): Bool;
	public static function drainDown(?count: Int)(): Bool;
	public static function fill(?count: Int): Bool;
	public static function fillUp(?count: Int): Bool;
	public static function fillDown(?count: Int): Bool;
	
}

@:multiReturn
extern class DetectResult
{
	public var detect: Bool;
	public var type: String;
}

@:multiReturn
extern class PlaceResult
{
	public var place: Bool;
	public var reason: String;
}

@:multiReturn
extern class DurabilityResult
{
	public var durability: Float;
	public var current: Float;
	public var max: Float;
}

@:multiReturn
extern class DurabilityError
{
	public var durability: Null<Dynamic>;
	public var error: String;
}

@:multiReturn
extern class SwingResult
{
	public var success: Bool;
	public var result: String;
}

@:multiReturn
extern class UseResult
{
	public var success: Bool;
	public var result: String;
}

@:multiReturn
extern class MoveResult
{
	public var moved: Null<Dynamic>;
	public var reason: String;
}