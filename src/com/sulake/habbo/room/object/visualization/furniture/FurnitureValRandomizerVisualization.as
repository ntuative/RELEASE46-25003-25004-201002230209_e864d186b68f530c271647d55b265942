package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1075:int = 31;
      
      private static const const_1074:int = 32;
      
      private static const const_485:int = 30;
      
      private static const const_757:int = 20;
      
      private static const const_486:int = 10;
       
      
      private var var_538:Boolean = false;
      
      private var var_215:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_215 = new Array();
         super();
         super.setAnimation(const_485);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            var_538 = true;
            var_215 = new Array();
            var_215.push(const_1075);
            var_215.push(const_1074);
            return;
         }
         if(param1 > 0 && param1 <= const_486)
         {
            if(var_538)
            {
               var_538 = false;
               var_215 = new Array();
               if(_direction == 2)
               {
                  var_215.push(const_757 + 5 - param1);
                  var_215.push(const_486 + 5 - param1);
               }
               else
               {
                  var_215.push(const_757 + param1);
                  var_215.push(const_486 + param1);
               }
               var_215.push(const_485);
               return;
            }
            super.setAnimation(const_485);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
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
