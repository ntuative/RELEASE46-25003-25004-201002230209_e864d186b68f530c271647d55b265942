package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PopularTagData
   {
       
      
      private var var_1741:int;
      
      private var var_1828:String;
      
      public function PopularTagData(param1:IMessageDataWrapper)
      {
         super();
         var_1828 = param1.readString();
         var_1741 = param1.readInteger();
      }
      
      public function get tagName() : String
      {
         return var_1828;
      }
      
      public function get userCount() : int
      {
         return var_1741;
      }
   }
}
