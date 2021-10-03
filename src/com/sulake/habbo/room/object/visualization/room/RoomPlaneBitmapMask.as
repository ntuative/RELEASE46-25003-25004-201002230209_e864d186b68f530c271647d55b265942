package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneBitmapMask
   {
       
      
      private var var_1764:Number = 0;
      
      private var _type:String = null;
      
      private var var_1761:Number = 0;
      
      public function RoomPlaneBitmapMask(param1:String, param2:Number, param3:Number)
      {
         super();
         _type = param1;
         var_1764 = param2;
         var_1761 = param3;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1764;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1761;
      }
   }
}
