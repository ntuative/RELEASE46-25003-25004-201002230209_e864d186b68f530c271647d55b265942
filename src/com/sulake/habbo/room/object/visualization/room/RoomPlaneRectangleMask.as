package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_1762:Number = 0;
      
      private var var_1764:Number = 0;
      
      private var var_1761:Number = 0;
      
      private var var_1763:Number = 0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1764 = param1;
         var_1761 = param2;
         var_1762 = param3;
         var_1763 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1764;
      }
      
      public function get leftSideLength() : Number
      {
         return var_1762;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1761;
      }
      
      public function get rightSideLength() : Number
      {
         return var_1763;
      }
   }
}
