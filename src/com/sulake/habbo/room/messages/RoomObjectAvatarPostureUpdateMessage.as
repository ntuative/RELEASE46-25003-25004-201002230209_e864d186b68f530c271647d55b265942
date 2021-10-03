package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1954:String;
      
      private var var_813:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_1954 = param1;
         var_813 = param2;
      }
      
      public function get postureType() : String
      {
         return var_1954;
      }
      
      public function get parameter() : String
      {
         return var_813;
      }
   }
}
