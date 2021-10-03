package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1521:int = 9;
      
      public static const const_1511:int = 4;
      
      public static const const_1498:int = 1;
      
      public static const const_1298:int = 10;
      
      public static const const_1428:int = 2;
      
      public static const const_1332:int = 7;
      
      public static const const_1340:int = 11;
      
      public static const const_1429:int = 3;
      
      public static const const_1231:int = 8;
      
      public static const const_1133:int = 5;
      
      public static const const_1446:int = 6;
      
      public static const const_1319:int = 12;
       
      
      private var var_1597:String;
      
      private var _roomId:int;
      
      private var var_1132:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_1597;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1132 = param1.readInteger();
         var_1597 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1132;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
