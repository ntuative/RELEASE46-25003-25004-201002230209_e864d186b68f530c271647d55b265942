package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class TagAndUserCountData
   {
       
      
      private var var_1741:int;
      
      private var var_1598:String;
      
      public function TagAndUserCountData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1598 = param1.readString();
         this.var_1741 = param1.readInteger();
      }
      
      public function get userCount() : int
      {
         return this.var_1741;
      }
      
      public function get tag() : String
      {
         return this.var_1598;
      }
   }
}
