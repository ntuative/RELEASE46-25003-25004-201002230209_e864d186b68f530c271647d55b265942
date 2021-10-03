package com.sulake.habbo.widget.events
{
   public class RoomWidgetToolbarClickedUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const ICON_TYPE_ROOM_INFO:String = "ICON_TYPE_ROOM_INFO";
      
      public static const const_585:String = "RWUE_REQUEST_ME_MENU_TOOLBAR_CLICKED";
      
      public static const ICON_TYPE_ME_MENU:String = "ICON_TYPE_ME_MENU";
       
      
      private var var_1811:String;
      
      private var _active:Boolean = false;
      
      public function RoomWidgetToolbarClickedUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_585,param3,param4);
         var_1811 = param1;
         _active = param2;
      }
      
      public function get iconType() : String
      {
         return var_1811;
      }
      
      public function get active() : Boolean
      {
         return _active;
      }
   }
}
