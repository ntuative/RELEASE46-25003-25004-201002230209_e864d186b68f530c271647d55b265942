package com.sulake.core.assets
{
   import flash.display.DisplayObject;
   
   public class DisplayAsset implements IAsset
   {
       
      
      protected var var_20:DisplayObject;
      
      protected var _disposed:Boolean = false;
      
      protected var var_920:String;
      
      protected var var_435:AssetTypeDeclaration;
      
      public function DisplayAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         var_435 = param1;
         var_920 = param2;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return var_435;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is DisplayAsset)
         {
            var_20 = DisplayAsset(param1).var_20;
            var_435 = DisplayAsset(param1).var_435;
            return;
         }
         throw new Error("Provided asset should be of type DisplayAsset!");
      }
      
      public function get url() : String
      {
         return var_920;
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         if(param1 is DisplayObject)
         {
            var_20 = param1 as DisplayObject;
            if(var_20 != null)
            {
               return;
            }
            throw new Error("Failed to convert DisplayObject to DisplayAsset!");
         }
         if(param1 is DisplayAsset)
         {
            var_20 = DisplayAsset(param1).var_20;
            var_435 = DisplayAsset(param1).var_435;
            if(var_20 == null)
            {
               throw new Error("Failed to read content from DisplayAsset!");
            }
         }
      }
      
      public function get content() : Object
      {
         return var_20;
      }
      
      public function dispose() : void
      {
         if(!_disposed)
         {
            if(false)
            {
               if(var_20.loaderInfo.loader != null)
               {
                  var_20.loaderInfo.loader.unload();
               }
            }
            var_20 = null;
            var_435 = null;
            _disposed = true;
            var_920 = null;
         }
      }
   }
}
