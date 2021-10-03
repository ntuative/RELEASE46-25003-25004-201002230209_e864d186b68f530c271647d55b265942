package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var _frames:Array;
      
      private var var_2241:int;
      
      private var var_2244:String;
      
      private var var_1493:IActionDefinition;
      
      private var var_2242:Boolean;
      
      private var _color:IPartColor;
      
      private var var_2239:String;
      
      private var var_2243:String;
      
      private var var_2179:Boolean;
      
      private var var_2240:ColorTransform;
      
      private var var_1703:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:int, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         var_2244 = param1;
         var_2239 = param2;
         var_2241 = param3;
         _color = param4;
         _frames = param5;
         var_1493 = param6;
         var_2179 = param7;
         var_1703 = param8;
         var_2243 = param9;
         var_2242 = param10;
         var_2240 = new ColorTransform(1,1,1,param11);
      }
      
      public function get isColorable() : Boolean
      {
         return var_2179;
      }
      
      public function get partType() : String
      {
         return var_2239;
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return 0;
      }
      
      public function get paletteMapId() : int
      {
         return var_1703;
      }
      
      public function get isBlendable() : Boolean
      {
         return var_2242;
      }
      
      public function get color() : IPartColor
      {
         return _color;
      }
      
      public function get partId() : int
      {
         return var_2241;
      }
      
      public function get flippedPartType() : String
      {
         return var_2243;
      }
      
      public function get bodyPartId() : String
      {
         return var_2244;
      }
      
      public function get action() : IActionDefinition
      {
         return var_1493;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return var_2240;
      }
   }
}
