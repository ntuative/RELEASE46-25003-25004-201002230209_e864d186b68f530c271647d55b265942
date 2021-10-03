package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_730:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_1598:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_730);
         var_1598 = param1;
      }
      
      public function get tag() : String
      {
         return var_1598;
      }
   }
}
