package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CanCreateRoomMessageParser implements IMessageParser
   {
      
      public static const const_1590:int = 0;
      
      public static const const_1533:int = 1;
       
      
      private var var_2282:int;
      
      private var var_1186:int;
      
      public function CanCreateRoomMessageParser()
      {
         super();
      }
      
      public function get roomLimit() : int
      {
         return var_2282;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1186 = param1.readInteger();
         this.var_2282 = param1.readInteger();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get resultCode() : int
      {
         return var_1186;
      }
   }
}
