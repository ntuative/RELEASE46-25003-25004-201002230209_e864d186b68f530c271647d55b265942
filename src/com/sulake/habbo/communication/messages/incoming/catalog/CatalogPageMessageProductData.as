package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_212:String = "e";
      
      public static const const_78:String = "i";
      
      public static const const_74:String = "s";
       
      
      private var var_1067:String;
      
      private var var_1335:String;
      
      private var var_1334:int;
      
      private var var_1724:int;
      
      private var var_1068:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1335 = param1.readString();
         var_1724 = param1.readInteger();
         var_1067 = param1.readString();
         var_1068 = param1.readInteger();
         var_1334 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_1068;
      }
      
      public function get productType() : String
      {
         return var_1335;
      }
      
      public function get expiration() : int
      {
         return var_1334;
      }
      
      public function get furniClassId() : int
      {
         return var_1724;
      }
      
      public function get extraParam() : String
      {
         return var_1067;
      }
   }
}
