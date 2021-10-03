package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2218:Class;
      
      private var var_2216:Class;
      
      private var var_2217:String;
      
      private var var_1340:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_2217 = param1;
         var_2216 = param2;
         var_2218 = param3;
         if(rest == null)
         {
            var_1340 = new Array();
         }
         else
         {
            var_1340 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_2218;
      }
      
      public function get assetClass() : Class
      {
         return var_2216;
      }
      
      public function get mimeType() : String
      {
         return var_2217;
      }
      
      public function get fileTypes() : Array
      {
         return var_1340;
      }
   }
}
