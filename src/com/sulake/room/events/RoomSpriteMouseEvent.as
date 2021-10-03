package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_1614:Boolean = false;
      
      private var var_1618:Boolean = false;
      
      private var var_1615:String = "";
      
      private var _type:String = "";
      
      private var var_1617:Boolean = false;
      
      private var var_1606:Number = 0;
      
      private var var_1616:Number = 0;
      
      private var var_1613:Number = 0;
      
      private var var_1619:String = "";
      
      private var var_1609:Number = 0;
      
      private var var_1620:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_1619 = param2;
         var_1615 = param3;
         var_1616 = param4;
         var_1613 = param5;
         var_1606 = param6;
         var_1609 = param7;
         var_1620 = param8;
         var_1618 = param9;
         var_1617 = param10;
         var_1614 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1620;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1614;
      }
      
      public function get localX() : Number
      {
         return var_1606;
      }
      
      public function get localY() : Number
      {
         return var_1609;
      }
      
      public function get canvasId() : String
      {
         return var_1619;
      }
      
      public function get altKey() : Boolean
      {
         return var_1618;
      }
      
      public function get method_1() : String
      {
         return var_1615;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_1616;
      }
      
      public function get screenY() : Number
      {
         return var_1613;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1617;
      }
   }
}
