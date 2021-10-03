package com.sulake.habbo.communication.messages.incoming.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOwnOffer
   {
      
      public static const const_1449:int = 2;
      
      public static const const_1459:int = 1;
      
      public static const const_1474:int = 0;
       
      
      private var var_1209:int;
      
      private var var_362:int;
      
      private var var_2355:int;
      
      private var _offerId:int;
      
      private var var_1674:int;
      
      private var var_1672:int;
      
      private var _image:BitmapData;
      
      public function MarketPlaceOwnOffer(param1:int, param2:int, param3:int, param4:int)
      {
         super();
         _offerId = param1;
         var_1672 = param2;
         var_1674 = param3;
         var_1209 = param4;
      }
      
      public function get furniId() : int
      {
         return var_1672;
      }
      
      public function get furniType() : int
      {
         return var_1674;
      }
      
      public function get price() : int
      {
         return var_1209;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
   }
}
