package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_536;
         param1["bitmap"] = const_732;
         param1["border"] = const_551;
         param1["border_notify"] = const_1353;
         param1["button"] = const_366;
         param1["button_thick"] = const_653;
         param1["button_icon"] = const_1280;
         param1["button_group_left"] = const_548;
         param1["button_group_center"] = const_614;
         param1["button_group_right"] = const_628;
         param1["canvas"] = const_599;
         param1["checkbox"] = const_575;
         param1["closebutton"] = const_952;
         param1["container"] = const_318;
         param1["container_button"] = const_678;
         param1["display_object_wrapper"] = const_547;
         param1["dropmenu"] = const_409;
         param1["dropmenu_item"] = const_465;
         param1["frame"] = const_303;
         param1["frame_notify"] = const_1293;
         param1["header"] = const_530;
         param1["icon"] = const_853;
         param1["itemgrid"] = const_919;
         param1["itemgrid_horizontal"] = const_417;
         param1["itemgrid_vertical"] = const_612;
         param1["itemlist"] = const_945;
         param1["itemlist_horizontal"] = const_305;
         param1["itemlist_vertical"] = const_296;
         param1["maximizebox"] = const_1307;
         param1["menu"] = const_1385;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_926;
         param1["minimizebox"] = const_1136;
         param1["notify"] = const_1361;
         param1["null"] = const_520;
         param1["password"] = const_692;
         param1["radiobutton"] = const_615;
         param1["region"] = const_477;
         param1["restorebox"] = const_1226;
         param1["scaler"] = const_962;
         param1["scaler_horizontal"] = const_1187;
         param1["scaler_vertical"] = const_1363;
         param1["scrollbar_horizontal"] = const_363;
         param1["scrollbar_vertical"] = const_595;
         param1["scrollbar_slider_button_up"] = const_964;
         param1["scrollbar_slider_button_down"] = const_842;
         param1["scrollbar_slider_button_left"] = const_953;
         param1["scrollbar_slider_button_right"] = const_875;
         param1["scrollbar_slider_bar_horizontal"] = const_791;
         param1["scrollbar_slider_bar_vertical"] = const_914;
         param1["scrollbar_slider_track_horizontal"] = const_855;
         param1["scrollbar_slider_track_vertical"] = const_995;
         param1["scrollable_itemlist"] = const_1288;
         param1["scrollable_itemlist_vertical"] = const_469;
         param1["scrollable_itemlist_horizontal"] = const_897;
         param1["selector"] = const_636;
         param1["selector_list"] = const_605;
         param1["submenu"] = const_926;
         param1["tab_button"] = const_553;
         param1["tab_container_button"] = const_867;
         param1["tab_context"] = const_457;
         param1["tab_content"] = const_989;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_735;
         param1["input"] = const_512;
         param1["toolbar"] = const_1165;
         param1["tooltip"] = const_321;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
