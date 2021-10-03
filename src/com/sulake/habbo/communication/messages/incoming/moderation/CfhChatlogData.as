package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1074:int;
      
      private var var_2048:int;
      
      private var var_1498:int;
      
      private var var_113:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1498 = param1.readInteger();
         var_2048 = param1.readInteger();
         var_1074 = param1.readInteger();
         var_113 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1498);
      }
      
      public function get reportedUserId() : int
      {
         return var_1074;
      }
      
      public function get callerUserId() : int
      {
         return var_2048;
      }
      
      public function get callId() : int
      {
         return var_1498;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_113;
      }
   }
}
