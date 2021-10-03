package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1127:int = 1;
      
      private static const const_1074:int = 3;
      
      private static const const_1126:int = 2;
      
      private static const const_1128:int = 15;
       
      
      private var var_902:int;
      
      private var var_215:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_215 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1126)
         {
            var_215 = new Array();
            var_215.push(const_1127);
            var_902 = const_1128;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_902 > 0)
         {
            --var_902;
         }
         if(var_902 == 0)
         {
            if(false)
            {
               super.setAnimation(var_215.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
