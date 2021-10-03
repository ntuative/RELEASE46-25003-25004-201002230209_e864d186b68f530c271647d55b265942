package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_1623:int;
      
      private var var_1622:String;
      
      private var var_1612:int;
      
      private var _disposed:Boolean;
      
      private var var_1624:int;
      
      private var var_1611:String;
      
      private var var_1177:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_1611 = param1.readString();
         var_1623 = param1.readInteger();
         var_1612 = param1.readInteger();
         var_1622 = param1.readString();
         var_1624 = param1.readInteger();
         var_1177 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_1624;
      }
      
      public function get worldId() : int
      {
         return var_1612;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
      }
      
      public function get unitPropertySet() : String
      {
         return var_1611;
      }
      
      public function get unitPort() : int
      {
         return var_1623;
      }
      
      public function get castLibs() : String
      {
         return var_1622;
      }
      
      public function get nodeId() : int
      {
         return var_1177;
      }
   }
}
