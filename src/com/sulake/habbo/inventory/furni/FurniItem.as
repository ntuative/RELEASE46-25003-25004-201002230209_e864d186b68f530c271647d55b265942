package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1974:int;
      
      private var var_1973:Boolean;
      
      private var var_1958:int;
      
      private var var_1361:String;
      
      private var var_2061:Boolean = false;
      
      private var var_1671:int;
      
      private var var_433:int;
      
      private var var_949:String;
      
      private var var_1963:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1221:int;
      
      private var var_1975:Boolean;
      
      private var var_2062:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1974 = param1;
         var_949 = param2;
         _objId = param3;
         var_1221 = param4;
         var_1361 = param5;
         var_1973 = param6;
         var_1975 = param7;
         var_1671 = param8;
         var_1963 = param9;
         var_1958 = param10;
         var_433 = -1;
      }
      
      public function get songId() : int
      {
         return var_1958;
      }
      
      public function get iconCallbackId() : int
      {
         return var_433;
      }
      
      public function get expiryTime() : int
      {
         return var_1671;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_2062 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_2061 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_433 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1975;
      }
      
      public function get slotId() : String
      {
         return var_1963;
      }
      
      public function get classId() : int
      {
         return var_1221;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1973;
      }
      
      public function get stuffData() : String
      {
         return var_1361;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1974;
      }
      
      public function get isLocked() : Boolean
      {
         return var_2061;
      }
      
      public function get prevCallbackId() : int
      {
         return var_2062;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_949;
      }
   }
}
