package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_934:Boolean;
      
      private var var_936:Boolean;
      
      private var var_935:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_934;
      }
      
      public function get hasChangedName() : Boolean
      {
         return var_936;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_935 = param1.readBoolean();
         var_936 = param1.readBoolean();
         var_934 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_935;
      }
      
      public function flush() : Boolean
      {
         var_935 = false;
         var_936 = false;
         var_934 = false;
         return true;
      }
   }
}
