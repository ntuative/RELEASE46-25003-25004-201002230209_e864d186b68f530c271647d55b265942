package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var var_2152:int;
      
      private var var_2154:int;
      
      private var var_2149:int;
      
      private var _userName:String;
      
      private var var_2150:int;
      
      private var var_2153:int;
      
      private var var_2151:int;
      
      private var _userId:int;
      
      private var var_655:Boolean;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         _userId = param1.readInteger();
         _userName = param1.readString();
         var_2153 = param1.readInteger();
         var_2150 = param1.readInteger();
         var_655 = param1.readBoolean();
         var_2149 = param1.readInteger();
         var_2154 = param1.readInteger();
         var_2152 = param1.readInteger();
         var_2151 = param1.readInteger();
      }
      
      public function get banCount() : int
      {
         return var_2151;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get online() : Boolean
      {
         return var_655;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return var_2150;
      }
      
      public function get abusiveCfhCount() : int
      {
         return var_2154;
      }
      
      public function get cautionCount() : int
      {
         return var_2152;
      }
      
      public function get cfhCount() : int
      {
         return var_2149;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return var_2153;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
