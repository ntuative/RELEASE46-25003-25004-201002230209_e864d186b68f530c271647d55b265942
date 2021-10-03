package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_949:int;
      
      private var var_1131:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         var_949 = param1;
         var_1131 = param2;
      }
      
      public function get itemType() : int
      {
         return var_949;
      }
      
      public function get itemName() : String
      {
         return var_1131;
      }
   }
}
