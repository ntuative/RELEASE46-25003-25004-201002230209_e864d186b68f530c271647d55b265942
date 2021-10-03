package com.sulake.habbo.toolbar.events
{
   import flash.events.Event;
   
   public class HabboToolbarEvent extends Event
   {
      
      public static const const_83:String = "HTE_INITIALIZED";
      
      public static const const_57:String = "HTE_TOOLBAR_CLICK";
      
      public static const TOOLBAR_ORIENTATION:String = "HTE_TOOLBAR_ORIENTATION";
       
      
      private var var_475:String;
      
      private var var_723:String;
      
      public function HabboToolbarEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function set orientation(param1:String) : void
      {
         var_475 = param1;
      }
      
      public function get iconId() : String
      {
         return var_723;
      }
      
      public function get orientation() : String
      {
         return var_475;
      }
      
      public function set iconId(param1:String) : void
      {
         var_723 = param1;
      }
   }
}