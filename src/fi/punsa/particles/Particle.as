package fi.punsa.particles {
	
	import mx.core.UIComponent;

	public class Particle extends UIComponent {
		
		public var xVelocity:Number;
		public var yVelocity:Number;
		public var zVelocity:Number;
		public var gravity:Number;
		public var friction:Number;
		public var growX:Number;
		public var growY:Number;
		public var fade:Number;
		public var autoRotate:Boolean;
		
		public function Particle() {
			
			xVelocity = 0;
			yVelocity = 0;
			zVelocity = 0;
			gravity = 0;
			friction = 1;
			growX = 1;
			growY = 1;
			fade = 1;
			autoRotate = false;
		}
		
		public function update():void {
		
			xVelocity *= friction;
			yVelocity *= friction;
			zVelocity *= friction;
			yVelocity += gravity;
			this.x += xVelocity;
			this.y += yVelocity;
			this.z += zVelocity;
			this.scaleX *= growX;
			this.scaleY *= growY;
			this.alpha *= fade;
			
			if (autoRotate) {			
				this.rotation = Math.atan2(yVelocity,xVelocity) * 180 / Math.PI;
			}
		}
		
	}
}