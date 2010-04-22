package fi.punsa.particles {
	
	import flash.display.Sprite;
	
	import mx.core.UIComponent;
	
	public class Ball extends Particle {
		
		private var ball:Sprite;
		private var minRadius:uint;
		private var maxRadius:uint;
		private var isEllipse:Boolean;
		private var color:Number;
		
		public function Ball(p_minRadius:uint=1,p_maxRadius:uint=1,p_color:Number=0x000000,p_isEllipse:Boolean=false) {
			
			super();
			
			color = p_color;
			minRadius = p_minRadius;
			maxRadius = p_maxRadius;
			isEllipse = p_isEllipse;
			
			draw();
		}
		
		private function draw():void {
		
			ball = new Sprite();
			ball.graphics.beginFill(this.color);
			if (isEllipse) {
				ball.graphics.drawEllipse(0,0,Math.random() * maxRadius*1.5 + minRadius,Math.random() * maxRadius + minRadius);
			} else {
				ball.graphics.drawCircle(0,0,Math.random() * maxRadius + minRadius);
			}
			ball.graphics.endFill();
			
			var regularObject:UIComponent = new UIComponent();
			regularObject.addChild(ball);
			
			addChild(regularObject);
		}
	}
}