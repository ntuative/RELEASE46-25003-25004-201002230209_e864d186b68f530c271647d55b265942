package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_113:RoomData;
      
      private var _disposed:Boolean;
      
      private var var_1741:int;
      
      private var var_391:int;
      
      private var var_738:RoomData;
      
      private var var_1987:int;
      
      private var _ownerName:String;
      
      private var var_2158:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         var_391 = param1.readInteger();
         var_1741 = param1.readInteger();
         var_2158 = param1.readBoolean();
         var_1987 = param1.readInteger();
         _ownerName = param1.readString();
         var_113 = new RoomData(param1);
         var_738 = new RoomData(param1);
      }
      
      public function get userCount() : int
      {
         return var_1741;
      }
      
      public function get event() : RoomData
      {
         return var_738;
      }
      
      public function get room() : RoomData
      {
         return var_113;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_113 != null)
         {
            var_113.dispose();
            var_113 = null;
         }
         if(var_738 != null)
         {
            var_738.dispose();
            var_738 = null;
         }
      }
      
      public function get flatId() : int
      {
         return var_391;
      }
      
      public function get ownerId() : int
      {
         return var_1987;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return var_2158;
      }
   }
}
