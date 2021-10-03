package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPresentDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_371:String = "RWPDUE_CONTENTS_CLUB";
      
      public static const const_367:String = "RWPDUE_CONTENTS_LANDSCAPE";
      
      public static const const_73:String = "RWPDUE_CONTENTS";
      
      public static const const_468:String = "RWPDUE_CONTENTS_WALLPAPER";
      
      public static const const_373:String = "RWPDUE_CONTENTS_FLOOR";
      
      public static const const_61:String = "RWPDUE_PACKAGEINFO";
       
      
      private var var_189:String;
      
      private var var_2195:BitmapData;
      
      private var var_145:int = -1;
      
      private var var_11:Boolean;
      
      public function RoomWidgetPresentDataUpdateEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:BitmapData = null, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_145 = param2;
         var_189 = param3;
         var_11 = param4;
         var_2195 = param5;
      }
      
      public function get iconBitmapData() : BitmapData
      {
         return var_2195;
      }
      
      public function get text() : String
      {
         return var_189;
      }
      
      public function get objectId() : int
      {
         return var_145;
      }
      
      public function get controller() : Boolean
      {
         return var_11;
      }
   }
}
