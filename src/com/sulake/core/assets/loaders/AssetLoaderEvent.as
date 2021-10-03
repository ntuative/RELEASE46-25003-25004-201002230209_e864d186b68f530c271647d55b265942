package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_843:String = "AssetLoaderEventUnload";
      
      public static const const_43:String = "AssetLoaderEventError";
      
      public static const const_942:String = "AssetLoaderEventOpen";
      
      public static const const_1017:String = "AssetLoaderEventProgress";
      
      public static const const_882:String = "AssetLoaderEventStatus";
      
      public static const const_30:String = "AssetLoaderEventComplete";
       
      
      private var var_362:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         var_362 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return var_362;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,var_362);
      }
   }
}
