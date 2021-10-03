package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1470:int = 2;
      
      public static const const_319:int = 4;
      
      public static const const_1195:int = 1;
      
      public static const const_1154:int = 3;
       
      
      private var var_995:int = 0;
      
      private var var_813:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_995;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_995 = param1.readInteger();
         if(var_995 == 3)
         {
            var_813 = param1.readString();
         }
         else
         {
            var_813 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_995 = 0;
         var_813 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_813;
      }
   }
}
