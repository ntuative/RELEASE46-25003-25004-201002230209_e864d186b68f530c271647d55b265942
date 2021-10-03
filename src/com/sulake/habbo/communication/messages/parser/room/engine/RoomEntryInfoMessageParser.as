package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1967:int;
      
      private var var_390:Boolean;
      
      private var var_1966:Boolean;
      
      private var var_827:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1966 = param1.readBoolean();
         if(var_1966)
         {
            var_1967 = param1.readInteger();
            var_390 = param1.readBoolean();
         }
         else
         {
            var_827 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_827 != null)
         {
            var_827.dispose();
            var_827 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_1967;
      }
      
      public function get owner() : Boolean
      {
         return var_390;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_1966;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_827;
      }
   }
}
