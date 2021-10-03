package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData
   {
       
      
      private var var_1897:int;
      
      private var var_1209:int;
      
      private var var_1675:int;
      
      private var var_1673:int = -1;
      
      private var var_362:int;
      
      private var var_1674:int;
      
      private var _image:BitmapData;
      
      private var _offerId:int;
      
      private var var_1208:int;
      
      private var var_1672:int;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int = -1)
      {
         super();
         _offerId = param1;
         var_1672 = param2;
         var_1674 = param3;
         var_1209 = param4;
         var_362 = param5;
         var_1675 = param6;
         var_1208 = param7;
      }
      
      public function set imageCallback(param1:int) : void
      {
         var_1897 = param1;
      }
      
      public function get imageCallback() : int
      {
         return var_1897;
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
      
      public function set timeLeftMinutes(param1:int) : void
      {
         var_1673 = param1;
      }
      
      public function dispose() : void
      {
         if(_image)
         {
            _image.dispose();
            _image = null;
         }
      }
      
      public function set price(param1:int) : void
      {
         var_1209 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1208 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get status() : int
      {
         return var_362;
      }
      
      public function get averagePrice() : int
      {
         return var_1675;
      }
      
      public function set offerId(param1:int) : void
      {
         _offerId = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function get furniId() : int
      {
         return var_1672;
      }
   }
}
