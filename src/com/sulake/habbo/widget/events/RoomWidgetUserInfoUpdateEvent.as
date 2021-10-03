package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_220:String = "RWUIUE_PEER";
      
      public static const const_200:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1356:String = "BOT";
      
      public static const const_845:int = 2;
      
      public static const const_1351:int = 0;
      
      public static const const_835:int = 3;
       
      
      private var var_1233:String = "";
      
      private var var_2086:Boolean = false;
      
      private var var_1856:int = 0;
      
      private var var_1710:int = 0;
      
      private var var_2083:Boolean = false;
      
      private var var_1231:String = "";
      
      private var var_2088:Boolean = false;
      
      private var var_796:int = 0;
      
      private var var_2089:Boolean = true;
      
      private var var_988:int = 0;
      
      private var var_2090:Boolean = false;
      
      private var var_1241:Boolean = false;
      
      private var var_2087:Boolean = false;
      
      private var var_1709:int = 0;
      
      private var var_2082:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_270:Array;
      
      private var var_1244:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1857:int = 0;
      
      private var var_2085:Boolean = false;
      
      private var var_2084:int = 0;
      
      private var var_1711:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_270 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_1710;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_1710 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_2086;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_2089;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_2089 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_2088 = param1;
      }
      
      public function get motto() : String
      {
         return var_1233;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_2090 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1241;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1233 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_2085;
      }
      
      public function get groupBadgeId() : String
      {
         return var_1711;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1241 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_2082;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_1709 = param1;
      }
      
      public function get badges() : Array
      {
         return var_270;
      }
      
      public function get amIController() : Boolean
      {
         return var_2083;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_2083 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_2085 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_2084 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_1711 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1231 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_2088;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_2090;
      }
      
      public function get carryItem() : int
      {
         return var_1709;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1244;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1244 = param1;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_796 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_2084;
      }
      
      public function get realName() : String
      {
         return var_1231;
      }
      
      public function set webID(param1:int) : void
      {
         var_1857 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_270 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_2087 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_2082 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_796;
      }
      
      public function get webID() : int
      {
         return var_1857;
      }
      
      public function set groupId(param1:int) : void
      {
         var_988 = param1;
      }
      
      public function get xp() : int
      {
         return var_1856;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_2086 = param1;
      }
      
      public function get groupId() : int
      {
         return var_988;
      }
      
      public function get canTrade() : Boolean
      {
         return var_2087;
      }
      
      public function set xp(param1:int) : void
      {
         var_1856 = param1;
      }
   }
}
