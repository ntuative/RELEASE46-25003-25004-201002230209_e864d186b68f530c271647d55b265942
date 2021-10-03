package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1741:int;
      
      private var var_1749:String;
      
      private var var_1744:int;
      
      private var var_1747:int;
      
      private var var_738:Boolean;
      
      private var var_1750:Boolean;
      
      private var var_391:int;
      
      private var var_1117:String;
      
      private var var_1745:int;
      
      private var var_1218:int;
      
      private var _ownerName:String;
      
      private var var_731:String;
      
      private var var_1751:int;
      
      private var var_1746:RoomThumbnailData;
      
      private var var_1748:Boolean;
      
      private var var_611:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_611 = new Array();
         super();
         var_391 = param1.readInteger();
         var_738 = param1.readBoolean();
         var_731 = param1.readString();
         _ownerName = param1.readString();
         var_1745 = param1.readInteger();
         var_1741 = param1.readInteger();
         var_1751 = param1.readInteger();
         var_1117 = param1.readString();
         var_1744 = param1.readInteger();
         var_1748 = param1.readBoolean();
         var_1747 = param1.readInteger();
         var_1218 = param1.readInteger();
         var_1749 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_611.push(_loc4_);
            _loc3_++;
         }
         var_1746 = new RoomThumbnailData(param1);
         var_1750 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_1751;
      }
      
      public function get roomName() : String
      {
         return var_731;
      }
      
      public function get userCount() : int
      {
         return var_1741;
      }
      
      public function get score() : int
      {
         return var_1747;
      }
      
      public function get eventCreationTime() : String
      {
         return var_1749;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1748;
      }
      
      public function get tags() : Array
      {
         return var_611;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1750;
      }
      
      public function get event() : Boolean
      {
         return var_738;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_611 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1218;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_1744;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_1746;
      }
      
      public function get doorMode() : int
      {
         return var_1745;
      }
      
      public function get flatId() : int
      {
         return var_391;
      }
      
      public function get description() : String
      {
         return var_1117;
      }
   }
}
