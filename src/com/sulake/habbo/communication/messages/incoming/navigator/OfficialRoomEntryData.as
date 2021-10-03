package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1383:int = 4;
      
      public static const const_695:int = 3;
      
      public static const const_690:int = 2;
      
      public static const const_1010:int = 1;
       
      
      private var var_1742:String;
      
      private var _disposed:Boolean;
      
      private var var_1741:int;
      
      private var var_1739:Boolean;
      
      private var var_818:String;
      
      private var var_778:PublicRoomData;
      
      private var var_1738:int;
      
      private var _index:int;
      
      private var var_1743:String;
      
      private var _type:int;
      
      private var var_1598:String;
      
      private var var_777:GuestRoomData;
      
      private var var_1740:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_1742 = param1.readString();
         var_1740 = param1.readString();
         var_1739 = param1.readInteger() == 1;
         var_1743 = param1.readString();
         var_818 = param1.readString();
         var_1738 = param1.readInteger();
         var_1741 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_1010)
         {
            var_1598 = param1.readString();
         }
         else if(_type == const_695)
         {
            var_778 = new PublicRoomData(param1);
         }
         else if(_type == const_690)
         {
            var_777 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_1738;
      }
      
      public function get popupCaption() : String
      {
         return var_1742;
      }
      
      public function get userCount() : int
      {
         return var_1741;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_1739;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1010)
         {
            return 0;
         }
         if(this.type == const_690)
         {
            return this.var_777.maxUserCount;
         }
         if(this.type == const_695)
         {
            return this.var_778.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_1740;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_777 != null)
         {
            this.var_777.dispose();
            this.var_777 = null;
         }
         if(this.var_778 != null)
         {
            this.var_778.dispose();
            this.var_778 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_777;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_1743;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_778;
      }
      
      public function get picRef() : String
      {
         return var_818;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1598;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
