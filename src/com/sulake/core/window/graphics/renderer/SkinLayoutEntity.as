package com.sulake.core.window.graphics.renderer
{
   import flash.geom.Rectangle;
   
   public class SkinLayoutEntity implements ISkinLayoutEntity
   {
      
      public static const const_255:uint = 1;
      
      public static const const_354:uint = 0;
      
      public static const const_789:uint = 8;
      
      public static const const_241:uint = 4;
      
      public static const const_368:uint = 2;
       
      
      private var var_376:uint;
      
      private var var_2027:uint;
      
      private var _color:uint;
      
      private var _name:String;
      
      private var var_2028:uint;
      
      private var var_99:Rectangle;
      
      private var var_611:Array;
      
      private var _id:uint;
      
      public function SkinLayoutEntity(param1:uint, param2:String, param3:Rectangle, param4:uint = 4.294967295E9, param5:uint = 100, param6:uint = 0, param7:uint = 0)
      {
         super();
         _id = param1;
         _name = param2;
         var_99 = param3;
         _color = param4;
         var_376 = param5;
         var_2027 = param6;
         var_2028 = param7;
         var_611 = new Array();
      }
      
      public function get scaleH() : uint
      {
         return var_2027;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get blend() : uint
      {
         return var_376;
      }
      
      public function get scaleV() : uint
      {
         return var_2028;
      }
      
      public function get tags() : Array
      {
         return var_611;
      }
      
      public function get id() : uint
      {
         return _id;
      }
      
      public function dispose() : void
      {
         var_99 = null;
         var_611 = null;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get region() : Rectangle
      {
         return var_99;
      }
   }
}
