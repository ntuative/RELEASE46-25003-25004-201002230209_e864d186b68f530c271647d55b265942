package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1209:int;
      
      private var var_1673:int = -1;
      
      private var var_362:int;
      
      private var var_1675:int;
      
      private var var_1674:int;
      
      private var _offerId:int;
      
      private var var_1208:int;
      
      private var var_1672:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         _offerId = param1;
         var_1672 = param2;
         var_1674 = param3;
         var_1209 = param4;
         var_362 = param5;
         var_1673 = param6;
         var_1675 = param7;
         var_1208 = param8;
      }
      
      public function get status() : int
      {
         return var_362;
      }
      
      public function get price() : int
      {
         return var_1209;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_1673;
      }
      
      public function get offerCount() : int
      {
         return var_1208;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_1674;
      }
      
      public function get averagePrice() : int
      {
         return var_1675;
      }
      
      public function get furniId() : int
      {
         return var_1672;
      }
   }
}
