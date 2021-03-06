package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_1504:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1488:String = "ROE_MOUSE_ENTER";
      
      public static const const_448:String = "ROE_MOUSE_MOVE";
      
      public static const const_1461:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_203:String = "ROE_MOUSE_CLICK";
      
      public static const const_385:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1617:Boolean;
      
      private var var_1614:Boolean;
      
      private var var_1618:Boolean;
      
      private var var_1620:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param2,param3,param8,param9);
         var_1618 = param4;
         var_1620 = param5;
         var_1617 = param6;
         var_1614 = param7;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1614;
      }
      
      public function get altKey() : Boolean
      {
         return var_1618;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1620;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1617;
      }
   }
}
