package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityStatusMessageParser implements IMessageParser
   {
       
      
      private var var_980:Boolean;
      
      private var var_1141:Boolean;
      
      public function AvailabilityStatusMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_980 = param1.readInteger() > 0;
         var_1141 = param1.readInteger() > 0;
         return true;
      }
      
      public function get isOpen() : Boolean
      {
         return var_980;
      }
      
      public function get onShutDown() : Boolean
      {
         return var_1141;
      }
      
      public function flush() : Boolean
      {
         var_980 = false;
         var_1141 = false;
         return true;
      }
   }
}
