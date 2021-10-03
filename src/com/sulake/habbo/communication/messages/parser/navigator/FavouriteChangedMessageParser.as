package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FavouriteChangedMessageParser implements IMessageParser
   {
       
      
      private var var_2278:Boolean;
      
      private var var_391:int;
      
      public function FavouriteChangedMessageParser()
      {
         super();
      }
      
      public function get method_12() : Boolean
      {
         return var_2278;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_391 = param1.readInteger();
         this.var_2278 = param1.readBoolean();
         return true;
      }
      
      public function get flatId() : int
      {
         return var_391;
      }
   }
}
