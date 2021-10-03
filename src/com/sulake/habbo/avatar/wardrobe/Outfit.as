package com.sulake.habbo.avatar.wardrobe
{
   import com.sulake.habbo.avatar.HabboAvatarEditor;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IOutfit;
   import com.sulake.habbo.avatar.enum.AvatarScaleType;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   import flash.display.BitmapData;
   
   public class Outfit implements IOutfit
   {
       
      
      private var var_1032:String;
      
      private var var_540:String;
      
      private var _view:OutfitView;
      
      private var var_1406:IAvatarImage;
      
      private var var_11:HabboAvatarEditor;
      
      private var _image:BitmapData;
      
      public function Outfit(param1:HabboAvatarEditor, param2:String, param3:String)
      {
         super();
         var_11 = param1;
         _view = new OutfitView(param1.windowManager,param1.assets,param2 != "");
         switch(param3)
         {
            case FigureData.const_75:
            case "m":
            case "M":
               param3 = "null";
               break;
            case FigureData.FEMALE:
            case "f":
            case "F":
               param3 = "null";
         }
         var_540 = param2;
         var_1032 = param3;
         update();
      }
      
      public function get gender() : String
      {
         return var_1032;
      }
      
      public function get image() : BitmapData
      {
         if(_image == null)
         {
            return new BitmapData(33,56,false,0);
         }
         return _image;
      }
      
      public function get view() : OutfitView
      {
         return _view;
      }
      
      public function update() : void
      {
         var_1406 = var_11.avatarRenderManager.createAvatarImage(figure,AvatarScaleType.const_97);
         var_1406.setDirection(AvatarSetType.const_37,int(FigureData.const_913));
         _image = var_1406.getImage(AvatarSetType.const_37);
         _view.udpate(_image);
      }
      
      public function get figure() : String
      {
         return var_540;
      }
      
      public function dispose() : void
      {
         var_540 = null;
         var_1032 = null;
         _image = null;
      }
   }
}
