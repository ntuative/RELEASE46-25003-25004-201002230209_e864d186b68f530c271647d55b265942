package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_838:Array;
      
      private var var_877:int;
      
      private var var_1306:String;
      
      private var _offerId:int;
      
      private var var_878:int;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1306 = param1.readString();
         var_877 = param1.readInteger();
         var_878 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_838 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_838.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get products() : Array
      {
         return var_838;
      }
      
      public function get priceInCredits() : int
      {
         return var_877;
      }
      
      public function get localizationId() : String
      {
         return var_1306;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_878;
      }
   }
}
