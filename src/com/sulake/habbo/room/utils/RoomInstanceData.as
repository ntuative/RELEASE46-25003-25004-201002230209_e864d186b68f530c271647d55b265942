package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_766:LegacyWallGeometry = null;
      
      private var var_536:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_537:TileHeightMap = null;
      
      private var var_1669:String = null;
      
      private var _roomId:int = 0;
      
      private var var_765:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_766 = new LegacyWallGeometry();
         var_765 = new RoomCamera();
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_537 != null)
         {
            var_537.dispose();
         }
         var_537 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_1669 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_766;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_765;
      }
      
      public function dispose() : void
      {
         if(var_537 != null)
         {
            var_537.dispose();
            var_537 = null;
         }
         if(var_766 != null)
         {
            var_766.dispose();
            var_766 = null;
         }
         if(var_765 != null)
         {
            var_765.dispose();
            var_765 = null;
         }
         if(var_536 != null)
         {
            var_536.dispose();
            var_536 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_537;
      }
      
      public function get worldType() : String
      {
         return var_1669;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_536 != null)
         {
            var_536.dispose();
         }
         var_536 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_536;
      }
   }
}
