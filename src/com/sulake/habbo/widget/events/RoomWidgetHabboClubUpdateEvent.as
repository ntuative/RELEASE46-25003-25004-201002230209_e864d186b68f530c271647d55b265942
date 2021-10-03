package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_208:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_1713:Boolean = false;
      
      private var var_1714:int = 0;
      
      private var var_1712:int = 0;
      
      private var var_1715:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:Boolean = false, param6:Boolean = false)
      {
         super(const_208,param5,param6);
         var_1715 = param1;
         var_1712 = param2;
         var_1714 = param3;
         var_1713 = param4;
      }
      
      public function get pastPeriods() : int
      {
         return var_1714;
      }
      
      public function get periodsLeft() : int
      {
         return var_1712;
      }
      
      public function get daysLeft() : int
      {
         return var_1715;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_1713;
      }
   }
}
