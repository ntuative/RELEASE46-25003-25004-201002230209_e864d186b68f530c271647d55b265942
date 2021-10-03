package com.sulake.habbo.widget.messages
{
   public class RoomWidgetEcotronBoxOpenedMessage extends RoomWidgetMessage
   {
      
      public static const const_1374:String = "RWEBOM_ECOTRONBOX_OPENED";
       
      
      private var var_1221:int;
      
      private var var_949:String;
      
      public function RoomWidgetEcotronBoxOpenedMessage(param1:String, param2:String, param3:int)
      {
         super(param1);
         var_949 = param2;
         var_1221 = param3;
      }
      
      public function get classId() : int
      {
         return var_1221;
      }
      
      public function get itemType() : String
      {
         return var_949;
      }
   }
}
