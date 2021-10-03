package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_1682:int;
      
      private var var_1681:int;
      
      private var var_1678:Boolean;
      
      private var var_1679:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1680:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_1681 = param1;
         var_1682 = param2;
         var_1679 = param3;
         var_1680 = param4;
         var_1678 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1681,var_1682,var_1679,var_1680,int(var_1678)];
      }
      
      public function dispose() : void
      {
      }
   }
}
