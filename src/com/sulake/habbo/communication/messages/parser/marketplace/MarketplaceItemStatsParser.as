package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_1487:Array;
      
      private var var_1675:int;
      
      private var var_2009:int;
      
      private var var_2011:int;
      
      private var var_2010:int;
      
      private var _dayOffsets:Array;
      
      private var var_2012:int;
      
      private var var_1486:Array;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1487;
      }
      
      public function get furniTypeId() : int
      {
         return var_2009;
      }
      
      public function get historyLength() : int
      {
         return var_2010;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get furniCategoryId() : int
      {
         return var_2011;
      }
      
      public function get offerCount() : int
      {
         return var_2012;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1486;
      }
      
      public function get averagePrice() : int
      {
         return var_1675;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1675 = param1.readInteger();
         var_2012 = param1.readInteger();
         var_2010 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _dayOffsets = [];
         var_1487 = [];
         var_1486 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _dayOffsets.push(param1.readInteger());
            var_1487.push(param1.readInteger());
            var_1486.push(param1.readInteger());
            _loc3_++;
         }
         var_2011 = param1.readInteger();
         var_2009 = param1.readInteger();
         return true;
      }
   }
}
