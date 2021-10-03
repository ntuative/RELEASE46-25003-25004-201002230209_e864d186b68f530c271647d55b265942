package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1487:Array;
      
      private var var_1675:int;
      
      private var var_2009:int;
      
      private var var_2010:int;
      
      private var var_2011:int;
      
      private var _dayOffsets:Array;
      
      private var var_2012:int;
      
      private var var_1486:Array;
      
      public function MarketplaceItemStats()
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
      
      public function set averagePrices(param1:Array) : void
      {
         var_1487 = param1.slice();
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         _dayOffsets = param1.slice();
      }
      
      public function get furniTypeId() : int
      {
         return var_2009;
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         var_1486 = param1.slice();
      }
      
      public function set averagePrice(param1:int) : void
      {
         var_1675 = param1;
      }
      
      public function get historyLength() : int
      {
         return var_2010;
      }
      
      public function get furniCategoryId() : int
      {
         return var_2011;
      }
      
      public function get offerCount() : int
      {
         return var_2012;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_2012 = param1;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1486;
      }
      
      public function get averagePrice() : int
      {
         return var_1675;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         var_2011 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         var_2010 = param1;
      }
      
      public function set furniTypeId(param1:int) : void
      {
         var_2009 = param1;
      }
   }
}
