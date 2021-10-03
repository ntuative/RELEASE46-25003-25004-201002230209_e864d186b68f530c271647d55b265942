package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_132:int = 1;
      
      public static const const_1277:int = 3;
      
      public static const const_397:int = 2;
       
      
      private var var_2189:int;
      
      private var var_1623:int;
      
      private var var_2192:int;
      
      private var var_1612:int;
      
      private var var_34:int;
      
      private var var_391:int;
      
      private var var_1136:int;
      
      private var var_2169:int;
      
      private var var_1074:int;
      
      private var _roomResources:String;
      
      private var var_2190:int;
      
      private var var_2191:int;
      
      private var var_2187:String;
      
      private var var_2168:String;
      
      private var var_2188:int = 0;
      
      private var var_1339:String;
      
      private var _message:String;
      
      private var var_2186:int;
      
      private var var_2185:String;
      
      private var var_1218:int;
      
      private var var_731:String;
      
      private var var_2193:String;
      
      private var var_1518:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_1074 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_2188 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_2191;
      }
      
      public function set roomName(param1:String) : void
      {
         var_731 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_2190 = param1;
      }
      
      public function get state() : int
      {
         return var_34;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_731;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1612 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_34 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_1623;
      }
      
      public function get priority() : int
      {
         return var_2189 + var_2188;
      }
      
      public function set issueId(param1:int) : void
      {
         var_2169 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_2168;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1518) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1218;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_2191 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1136;
      }
      
      public function set flatType(param1:String) : void
      {
         var_2187 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_2190;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1612;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_2193 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1339 = param1;
      }
      
      public function get issueId() : int
      {
         return var_2169;
      }
      
      public function set priority(param1:int) : void
      {
         var_2189 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_1623 = param1;
      }
      
      public function get flatType() : String
      {
         return var_2187;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_2192 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_2168 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_2186 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1339;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1136 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_2192;
      }
      
      public function set flatId(param1:int) : void
      {
         var_391 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1218 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1518 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_2186;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_2185 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1518;
      }
      
      public function get reportedUserId() : int
      {
         return var_1074;
      }
      
      public function get flatId() : int
      {
         return var_391;
      }
      
      public function get flatOwnerName() : String
      {
         return var_2193;
      }
      
      public function get reporterUserName() : String
      {
         return var_2185;
      }
   }
}
