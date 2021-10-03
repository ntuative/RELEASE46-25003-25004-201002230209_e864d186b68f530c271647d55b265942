package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_408:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
      
      public static const const_328:String = "RWRQUE_VISITOR_QUEUE_STATUS";
       
      
      private var var_820:int;
      
      private var var_269:Boolean;
      
      private var var_2183:Boolean;
      
      private var var_1563:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_820 = param2;
         var_2183 = param3;
         var_269 = param4;
         var_1563 = param5;
      }
      
      public function get position() : int
      {
         return var_820;
      }
      
      public function get isActive() : Boolean
      {
         return var_269;
      }
      
      public function get isClubQueue() : Boolean
      {
         return var_1563;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return var_2183;
      }
   }
}
