package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_607:Array;
      
      private var var_1209:int;
      
      private var var_1541:Array;
      
      private var var_608:Array;
      
      private var var_1839:Boolean = false;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         var_1839 = _loc2_.isWrappingEnabled;
         var_1209 = _loc2_.wrappingPrice;
         var_1541 = _loc2_.stuffTypes;
         var_608 = _loc2_.boxTypes;
         var_607 = _loc2_.ribbonTypes;
      }
      
      public function get ribbonTypes() : Array
      {
         return var_607;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1541;
      }
      
      public function get price() : int
      {
         return var_1209;
      }
      
      public function get boxTypes() : Array
      {
         return var_608;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1839;
      }
   }
}
