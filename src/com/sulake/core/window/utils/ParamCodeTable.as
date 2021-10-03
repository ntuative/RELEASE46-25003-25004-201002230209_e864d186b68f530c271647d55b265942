package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_119;
         param1["bound_to_parent_rect"] = const_84;
         param1["child_window"] = const_840;
         param1["embedded_controller"] = const_335;
         param1["resize_to_accommodate_children"] = const_59;
         param1["input_event_processor"] = const_49;
         param1["internal_event_handling"] = const_600;
         param1["mouse_dragging_target"] = const_190;
         param1["mouse_dragging_trigger"] = const_315;
         param1["mouse_scaling_target"] = const_270;
         param1["mouse_scaling_trigger"] = const_393;
         param1["horizontal_mouse_scaling_trigger"] = const_196;
         param1["vertical_mouse_scaling_trigger"] = const_202;
         param1["observe_parent_input_events"] = const_832;
         param1["optimize_region_to_layout_size"] = const_392;
         param1["parent_window"] = const_815;
         param1["relative_horizontal_scale_center"] = const_159;
         param1["relative_horizontal_scale_fixed"] = const_105;
         param1["relative_horizontal_scale_move"] = const_330;
         param1["relative_horizontal_scale_strech"] = const_253;
         param1["relative_scale_center"] = const_879;
         param1["relative_scale_fixed"] = const_564;
         param1["relative_scale_move"] = const_799;
         param1["relative_scale_strech"] = const_937;
         param1["relative_vertical_scale_center"] = const_173;
         param1["relative_vertical_scale_fixed"] = const_121;
         param1["relative_vertical_scale_move"] = const_312;
         param1["relative_vertical_scale_strech"] = const_265;
         param1["on_resize_align_left"] = const_538;
         param1["on_resize_align_right"] = const_374;
         param1["on_resize_align_center"] = const_436;
         param1["on_resize_align_top"] = const_522;
         param1["on_resize_align_bottom"] = const_461;
         param1["on_resize_align_middle"] = const_426;
         param1["on_accommodate_align_left"] = const_975;
         param1["on_accommodate_align_right"] = const_464;
         param1["on_accommodate_align_center"] = const_666;
         param1["on_accommodate_align_top"] = const_973;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_721;
         param1["route_input_events_to_parent"] = const_431;
         param1["use_parent_graphic_context"] = const_29;
         param1["draggable_with_mouse"] = const_979;
         param1["scalable_with_mouse"] = const_803;
         param1["reflect_horizontal_resize_to_parent"] = const_478;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_243;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
