package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer
   {
      
      public static const const_863:String = "price_type_none";
      
      public static const const_377:String = "pricing_model_multi";
      
      public static const const_467:String = "price_type_credits";
      
      public static const const_481:String = "price_type_credits_and_pixels";
      
      public static const const_358:String = "pricing_model_bundle";
      
      public static const const_378:String = "pricing_model_single";
      
      public static const const_601:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1365:String = "pricing_model_unknown";
      
      public static const const_386:String = "price_type_pixels";
       
      
      private var var_877:int;
      
      private var _offerId:int;
      
      private var var_878:int;
      
      private var var_411:String;
      
      private var var_585:String;
      
      private var var_2129:int;
      
      private var var_663:ICatalogPage;
      
      private var var_1306:String;
      
      private var var_412:IProductContainer;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1306 = param1.localizationId;
         var_877 = param1.priceInCredits;
         var_878 = param1.priceInPixels;
         var_663 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.method_11(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_411;
      }
      
      public function get page() : ICatalogPage
      {
         return var_663;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_2129 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_412;
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
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1306 = "";
         var_877 = 0;
         var_878 = 0;
         var_663 = null;
         if(var_412 != null)
         {
            var_412.dispose();
            var_412 = null;
         }
      }
      
      public function get priceType() : String
      {
         return var_585;
      }
      
      public function get previewCallbackId() : int
      {
         return var_2129;
      }
      
      public function get priceInCredits() : int
      {
         return var_877;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_411 = const_378;
            }
            else
            {
               var_411 = const_377;
            }
         }
         else if(param1.length > 1)
         {
            var_411 = const_358;
         }
         else
         {
            var_411 = const_1365;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_411)
         {
            case const_378:
               var_412 = new SingleProductContainer(this,param1);
               break;
            case const_377:
               var_412 = new MultiProductContainer(this,param1);
               break;
            case const_358:
               var_412 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_411);
         }
      }
      
      private function analyzePriceType() : void
      {
         if(var_877 > 0 && var_878 > 0)
         {
            var_585 = const_481;
         }
         else if(var_877 > 0)
         {
            var_585 = const_467;
         }
         else if(var_878 > 0)
         {
            var_585 = const_386;
         }
         else
         {
            var_585 = const_863;
         }
      }
   }
}
