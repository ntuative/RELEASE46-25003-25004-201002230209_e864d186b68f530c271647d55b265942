package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.room.IGetImageListener;
   import com.sulake.habbo.room.IRoomEngine;
   import flash.display.BitmapData;
   
   public class ProductContainer extends ProductGridItem implements IGetImageListener, IProductContainer, IGridItem
   {
       
      
      private var var_838:Array;
      
      private var var_433:int;
      
      protected var var_79:Offer;
      
      public function ProductContainer(param1:Offer, param2:Array)
      {
         super();
         var_79 = param1;
         var_838 = param2;
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         super.dispose();
         for each(_loc1_ in var_838)
         {
            _loc1_.dispose();
         }
         var_838 = null;
         var_433 = 0;
      }
      
      public function get products() : Array
      {
         return var_838;
      }
      
      public function initProductIcon(param1:IRoomEngine) : void
      {
      }
      
      public function imageReady(param1:int, param2:BitmapData) : void
      {
         setIconImage(param2);
      }
      
      public function get firstProduct() : IProduct
      {
         return var_838[0] as IProduct;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_433 = param1;
      }
      
      public function get iconCallbackId() : int
      {
         return var_433;
      }
      
      public function get offer() : Offer
      {
         return var_79;
      }
   }
}
