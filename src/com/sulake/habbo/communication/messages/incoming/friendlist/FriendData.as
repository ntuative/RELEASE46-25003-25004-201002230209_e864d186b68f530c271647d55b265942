package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_540:String;
      
      private var var_1232:String;
      
      private var var_1233:String;
      
      private var var_1218:int;
      
      private var var_1032:int;
      
      private var var_1231:String;
      
      private var _name:String;
      
      private var var_1230:Boolean;
      
      private var var_655:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_1032 = param1.readInteger();
         this.var_655 = param1.readBoolean();
         this.var_1230 = param1.readBoolean();
         this.var_540 = param1.readString();
         this.var_1218 = param1.readInteger();
         this.var_1233 = param1.readString();
         this.var_1232 = param1.readString();
         this.var_1231 = param1.readString();
      }
      
      public function get gender() : int
      {
         return var_1032;
      }
      
      public function get realName() : String
      {
         return var_1231;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1233;
      }
      
      public function get categoryId() : int
      {
         return var_1218;
      }
      
      public function get online() : Boolean
      {
         return var_655;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1230;
      }
      
      public function get lastAccess() : String
      {
         return var_1232;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_540;
      }
   }
}
