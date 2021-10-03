package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1357:String = "F";
      
      public static const const_993:String = "M";
       
      
      private var var_87:Number = 0;
      
      private var var_540:String = "";
      
      private var var_1852:int = 0;
      
      private var var_1855:String = "";
      
      private var var_1853:int = 0;
      
      private var var_1856:int = 0;
      
      private var var_1858:String = "";
      
      private var var_1307:String = "";
      
      private var _id:int = 0;
      
      private var var_193:Boolean = false;
      
      private var var_213:int = 0;
      
      private var var_1854:String = "";
      
      private var _name:String = "";
      
      private var var_1857:int = 0;
      
      private var _y:Number = 0;
      
      private var var_88:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_88;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_213;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_193)
         {
            var_213 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_193)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_1852;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_193)
         {
            var_1853 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_1854;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_193)
         {
            var_1858 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_193)
         {
            var_1854 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_193)
         {
            var_1856 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_193)
         {
            var_540 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_193)
         {
            var_1852 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_193)
         {
            var_1307 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1853;
      }
      
      public function get groupID() : String
      {
         return var_1858;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_193)
         {
            var_1857 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_193)
         {
            var_1855 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_193 = true;
      }
      
      public function get sex() : String
      {
         return var_1307;
      }
      
      public function get figure() : String
      {
         return var_540;
      }
      
      public function get webID() : int
      {
         return var_1857;
      }
      
      public function get custom() : String
      {
         return var_1855;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_193)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_193)
         {
            var_88 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_193)
         {
            var_87 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_87;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1856;
      }
   }
}
