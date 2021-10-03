package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1361:String;
      
      private var var_949:String;
      
      private var var_1972:Boolean;
      
      private var var_1519:int;
      
      private var var_1974:int;
      
      private var var_1976:Boolean;
      
      private var var_1963:String = "";
      
      private var var_1973:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1221:int;
      
      private var var_1975:Boolean;
      
      private var var_1958:int = -1;
      
      private var var_1671:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1974 = param1;
         var_949 = param2;
         _objId = param3;
         var_1221 = param4;
         _category = param5;
         var_1361 = param6;
         var_1972 = param7;
         var_1973 = param8;
         var_1975 = param9;
         var_1976 = param10;
         var_1671 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1963;
      }
      
      public function get extra() : int
      {
         return var_1519;
      }
      
      public function get classId() : int
      {
         return var_1221;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get method_5() : Boolean
      {
         return var_1976;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_1972;
      }
      
      public function get stripId() : int
      {
         return var_1974;
      }
      
      public function get stuffData() : String
      {
         return var_1361;
      }
      
      public function get songId() : int
      {
         return var_1958;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1963 = param1;
         var_1519 = param2;
      }
      
      public function get itemType() : String
      {
         return var_949;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1671;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1975;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1973;
      }
   }
}
