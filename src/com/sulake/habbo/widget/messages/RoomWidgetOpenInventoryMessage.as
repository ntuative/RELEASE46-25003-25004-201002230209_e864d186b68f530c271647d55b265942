package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_1016:String = "inventory_badges";
      
      public static const const_1341:String = "inventory_clothes";
      
      public static const const_1379:String = "inventory_furniture";
      
      public static const const_579:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1015:String = "inventory_effects";
       
      
      private var var_1783:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_579);
         var_1783 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_1783;
      }
   }
}
