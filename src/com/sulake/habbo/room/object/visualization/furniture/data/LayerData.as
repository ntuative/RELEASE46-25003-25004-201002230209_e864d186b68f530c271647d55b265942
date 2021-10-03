package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_353:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_361:int = 0;
      
      public static const const_915:int = 2;
      
      public static const const_959:int = 1;
      
      public static const const_629:Boolean = false;
      
      public static const const_660:String = "";
      
      public static const const_387:int = 0;
      
      public static const const_449:int = 0;
      
      public static const const_423:int = 0;
       
      
      private var var_1649:int = 0;
      
      private var var_1598:String = "";
      
      private var var_1442:int = 0;
      
      private var var_1648:int = 0;
      
      private var var_1651:Number = 0;
      
      private var var_1650:int = 255;
      
      private var var_1647:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_1649;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1442 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_1651;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_1648 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_1649 = param1;
      }
      
      public function get tag() : String
      {
         return var_1598;
      }
      
      public function get alpha() : int
      {
         return var_1650;
      }
      
      public function get ink() : int
      {
         return var_1442;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_1651 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_1648;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_1647 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_1647;
      }
      
      public function set tag(param1:String) : void
      {
         var_1598 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1650 = param1;
      }
   }
}
