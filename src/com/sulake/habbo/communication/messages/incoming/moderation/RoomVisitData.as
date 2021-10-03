package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_731:String;
      
      private var var_1831:int;
      
      private var var_1559:Boolean;
      
      private var _roomId:int;
      
      private var var_1832:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1559 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_731 = param1.readString();
         var_1832 = param1.readInteger();
         var_1831 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1559;
      }
      
      public function get roomName() : String
      {
         return var_731;
      }
      
      public function get enterMinute() : int
      {
         return var_1831;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_1832;
      }
   }
}
