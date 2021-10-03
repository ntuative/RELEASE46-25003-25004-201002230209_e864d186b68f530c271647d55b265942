package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1557:String;
      
      private var var_1996:int;
      
      private var var_1997:int;
      
      private var var_1994:int;
      
      private var var_1995:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_1996 = param1.readInteger();
         var_1994 = param1.readInteger();
         var_1997 = param1.readInteger();
         var_1995 = param1.readString();
         var_1557 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1557;
      }
      
      public function get hour() : int
      {
         return var_1996;
      }
      
      public function get minute() : int
      {
         return var_1994;
      }
      
      public function get chatterName() : String
      {
         return var_1995;
      }
      
      public function get chatterId() : int
      {
         return var_1997;
      }
   }
}
