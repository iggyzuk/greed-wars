package com.iggyzuk.LD23 {
	/**
	 * ...
	 * @author Ignatus Zuk
	 */
	public class Factory extends Building {
		
		public function Factory(_edge:Edge, _faction:int, _type:int, takeTerritory:Boolean = true) {
			
			super(_edge, _faction, _type, takeTerritory);
			
			HP = 200;
			income = 1;
			
			skin = new FactoryBuilding();
			skin.scaleX = skin.scaleY = 2;
			HPBar.changeHp(HP);
			
			render();
		}
		
		override public function update():void {
			HPBar.update();
		}
		
		public function produceUnits():void {
			Controller.level.addActor(edge, faction, 0, 1);
			Controller.level.addActor(edge, faction, 1, 1);
		}
		
	}

}