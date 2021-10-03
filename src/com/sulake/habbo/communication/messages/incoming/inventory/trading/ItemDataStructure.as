package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_949:String;
      
      private var var_2105:int;
      
      private var var_2100:int;
      
      private var var_1519:int;
      
      private var var_2104:int;
      
      private var _category:int;
      
      private var var_2367:int;
      
      private var var_2102:int;
      
      private var var_2099:int;
      
      private var var_2103:int;
      
      private var var_2106:int;
      
      private var var_2101:Boolean;
      
      private var var_1361:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_2105 = param1;
         var_949 = param2;
         var_2100 = param3;
         var_2103 = param4;
         _category = param5;
         var_1361 = param6;
         var_1519 = param7;
         var_2099 = param8;
         var_2102 = param9;
         var_2106 = param10;
         var_2104 = param11;
         var_2101 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_2103;
      }
      
      public function get extra() : int
      {
         return var_1519;
      }
      
      public function get stuffData() : String
      {
         return var_1361;
      }
      
      public function get groupable() : Boolean
      {
         return var_2101;
      }
      
      public function get creationMonth() : int
      {
         return var_2106;
      }
      
      public function get roomItemID() : int
      {
         return var_2100;
      }
      
      public function get itemType() : String
      {
         return var_949;
      }
      
      public function get itemID() : int
      {
         return var_2105;
      }
      
      public function get songID() : int
      {
         return var_1519;
      }
      
      public function get timeToExpiration() : int
      {
         return var_2099;
      }
      
      public function get creationYear() : int
      {
         return var_2104;
      }
      
      public function get creationDay() : int
      {
         return var_2102;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
