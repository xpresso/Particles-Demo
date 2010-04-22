package fi.punsa.util {
	
	import flash.geom.ColorTransform;
	
	public class Colorizer {
		
		private var redBias:Number = 0xFF;
		private var greenBias:Number = 0xFF;
		private var blueBias:Number = 0xFF;
		
		public function randomColor():Number {
		
			var ranR:Number = Math.random() * redBias;
			var ranG:Number = Math.random() * greenBias;
			var ranB:Number = Math.random() * blueBias;
			var ct:ColorTransform = new ColorTransform(1,1,1,1,ranR,ranG,ranB);
			var color:uint = ct.color;
			return color;
		}
		
		public function randomGrey():Number {
		
			var ranR:Number = Math.random() * redBias;
		
			var ct:ColorTransform = new ColorTransform(1,1,1,1,ranR,ranR,ranR);
			var color:uint = ct.color;
			return color;
		}
	}
}