package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1394:int = 10;
       
      
      private var var_1387:NavigatorSettingsMessageParser;
      
      private var var_1127:int;
      
      private var var_1658:int;
      
      private var var_1659:Boolean;
      
      private var var_946:Array;
      
      private var var_762:Dictionary;
      
      private var var_947:Array;
      
      private var var_2277:int;
      
      private var var_1657:int;
      
      private var var_1661:int;
      
      private var var_1656:int;
      
      private var var_535:PublicRoomShortData;
      
      private var var_371:RoomEventData;
      
      private var var_122:MsgWithRequestId;
      
      private var var_1660:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_1655:Boolean;
      
      private var var_185:GuestRoomData;
      
      private var var_631:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_946 = new Array();
         var_947 = new Array();
         var_762 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_1658;
      }
      
      public function get eventMod() : Boolean
      {
         return var_1655;
      }
      
      public function startLoading() : void
      {
         this.var_631 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_1655 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_371 != null)
         {
            var_371.dispose();
         }
         var_371 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_122 != null && var_122 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_122 != null && var_122 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_122 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_185;
      }
      
      public function get allCategories() : Array
      {
         return var_946;
      }
      
      public function onRoomExit() : void
      {
         if(var_371 != null)
         {
            var_371.dispose();
            var_371 = null;
         }
         if(var_535 != null)
         {
            var_535.dispose();
            var_535 = null;
         }
         if(var_185 != null)
         {
            var_185.dispose();
            var_185 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_122 = param1;
         var_631 = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1387;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_122 = param1;
         var_631 = false;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_535 = null;
         var_185 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_535 = param1.publicSpace;
            var_371 = null;
         }
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2277 = param1.limit;
         this.var_1127 = param1.favouriteRoomIds.length;
         this.var_762 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_762[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_122 as PopularRoomTagsData;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_535;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_1659;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_122 = param1;
         var_631 = false;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1661 = param1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_185 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_631;
      }
      
      public function get visibleCategories() : Array
      {
         return var_947;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         var_946 = param1;
         var_947 = new Array();
         for each(_loc2_ in var_946)
         {
            if(_loc2_.visible)
            {
               var_947.push(_loc2_);
            }
         }
      }
      
      public function get currentRoomRating() : int
      {
         return var_1657;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_1656;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1387 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_122 == null)
         {
            return;
         }
         var_122.dispose();
         var_122 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_371;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_762[param1] = !!param2 ? "yes" : null;
         var_1127 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_122 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_1661;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_122 != null && var_122 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_1659 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_1657 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_1660 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_185 != null)
         {
            var_185.dispose();
         }
         var_185 = param1;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_185 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1387.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1127 >= var_2277;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_1656 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_1660;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_185 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_1658 = param1;
      }
   }
}
