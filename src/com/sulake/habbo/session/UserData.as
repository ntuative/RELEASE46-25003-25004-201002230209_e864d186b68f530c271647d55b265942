package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var var_540:String = "";
      
      private var var_1855:String = "";
      
      private var var_1853:int = 0;
      
      private var var_1856:int = 0;
      
      private var _type:int = 0;
      
      private var var_1858:String = "";
      
      private var var_1307:String = "";
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var var_1857:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set groupStatus(param1:int) : void
      {
         var_1853 = param1;
      }
      
      public function set groupID(param1:String) : void
      {
         var_1858 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set figure(param1:String) : void
      {
         var_540 = param1;
      }
      
      public function set sex(param1:String) : void
      {
         var_1307 = param1;
      }
      
      public function get groupStatus() : int
      {
         return var_1853;
      }
      
      public function set webID(param1:int) : void
      {
         var_1857 = param1;
      }
      
      public function get groupID() : String
      {
         return var_1858;
      }
      
      public function set custom(param1:String) : void
      {
         var_1855 = param1;
      }
      
      public function get figure() : String
      {
         return var_540;
      }
      
      public function get sex() : String
      {
         return var_1307;
      }
      
      public function get custom() : String
      {
         return var_1855;
      }
      
      public function get webID() : int
      {
         return var_1857;
      }
      
      public function set xp(param1:int) : void
      {
         var_1856 = param1;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function get xp() : int
      {
         return var_1856;
      }
   }
}
