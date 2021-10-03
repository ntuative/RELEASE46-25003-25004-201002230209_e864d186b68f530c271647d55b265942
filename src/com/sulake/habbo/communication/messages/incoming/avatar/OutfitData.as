package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1962:String;
      
      private var var_1032:String;
      
      private var var_1963:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1963 = param1.readInteger();
         var_1962 = param1.readString();
         var_1032 = param1.readString();
      }
      
      public function get gender() : String
      {
         return var_1032;
      }
      
      public function get figureString() : String
      {
         return var_1962;
      }
      
      public function get slotId() : int
      {
         return var_1963;
      }
   }
}
