package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MessengerErrorMessageParser implements IMessageParser
   {
       
      
      private var var_1132:int;
      
      private var var_2285:int;
      
      public function MessengerErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2285 = param1.readInteger();
         this.var_1132 = param1.readInteger();
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1132;
      }
      
      public function get clientMessageId() : int
      {
         return this.var_2285;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
   }
}
