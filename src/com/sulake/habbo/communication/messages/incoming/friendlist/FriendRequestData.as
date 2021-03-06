package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1810:int;
      
      private var var_1809:String;
      
      private var var_979:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_979 = param1.readInteger();
         this.var_1809 = param1.readString();
         this.var_1810 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_979;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_1810;
      }
      
      public function get requesterName() : String
      {
         return this.var_1809;
      }
   }
}
