package com.sulake.habbo.communication.messages.incoming.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PrizeLevelMessageData
   {
       
      
      private var var_2054:int;
      
      private var var_1111:int;
      
      private var var_656:Array;
      
      public function PrizeLevelMessageData(param1:IMessageDataWrapper)
      {
         super();
         var_1111 = param1.readInteger();
         var_2054 = param1.readInteger();
         var_656 = new Array();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_656.push(new PrizeMessageData(param1));
            _loc3_++;
         }
      }
      
      public function get probabilityDenominator() : int
      {
         return var_2054;
      }
      
      public function get prizes() : Array
      {
         return var_656;
      }
      
      public function get prizeLevelId() : int
      {
         return var_1111;
      }
   }
}
