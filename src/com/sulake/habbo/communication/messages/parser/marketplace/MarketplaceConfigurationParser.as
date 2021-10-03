package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1840:int;
      
      private var var_1432:int;
      
      private var var_1843:int;
      
      private var var_1841:int;
      
      private var var_1845:int;
      
      private var var_1433:int;
      
      private var var_1844:int;
      
      private var var_1839:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1840;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1432;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_1844;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1841;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_1845;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1433;
      }
      
      public function get commission() : int
      {
         return var_1843;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1839 = param1.readBoolean();
         var_1843 = param1.readInteger();
         var_1432 = param1.readInteger();
         var_1433 = param1.readInteger();
         var_1841 = param1.readInteger();
         var_1840 = param1.readInteger();
         var_1845 = param1.readInteger();
         var_1844 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1839;
      }
   }
}
