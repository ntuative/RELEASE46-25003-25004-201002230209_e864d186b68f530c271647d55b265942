package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_678:IAssetLoader;
      
      private var var_1178:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         var_1178 = param1;
         var_678 = param2;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return var_678;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(var_678 != null)
            {
               if(true)
               {
                  var_678.dispose();
                  var_678 = null;
               }
            }
            super.dispose();
         }
      }
      
      public function get assetName() : String
      {
         return var_1178;
      }
   }
}
