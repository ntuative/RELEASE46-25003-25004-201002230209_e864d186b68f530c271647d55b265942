package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_424:int = 0;
      
      public static const const_122:int = 2;
      
      public static const const_160:int = 1;
      
      public static const const_727:Array = ["open","closed","password"];
       
      
      private var _name:String;
      
      private var var_1793:Boolean;
      
      private var var_1792:Boolean;
      
      private var var_1932:int;
      
      private var var_1794:Array;
      
      private var var_1931:int;
      
      private var var_1750:Boolean;
      
      private var var_1117:String;
      
      private var var_1795:int;
      
      private var var_1745:int;
      
      private var var_1218:int;
      
      private var _roomId:int;
      
      private var var_611:Array;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get maximumVisitors() : int
      {
         return var_1795;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_1795 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get tags() : Array
      {
         return var_611;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1750;
      }
      
      public function set controllerCount(param1:int) : void
      {
         var_1931 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_1794 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_611 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_1793;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_1792;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return var_1932;
      }
      
      public function get categoryId() : int
      {
         return var_1218;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1750 = param1;
      }
      
      public function get controllerCount() : int
      {
         return var_1931;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_1794;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1745 = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_1793 = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_1792 = param1;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         var_1932 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_1745;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1218 = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1117 = param1;
      }
      
      public function get description() : String
      {
         return var_1117;
      }
   }
}
