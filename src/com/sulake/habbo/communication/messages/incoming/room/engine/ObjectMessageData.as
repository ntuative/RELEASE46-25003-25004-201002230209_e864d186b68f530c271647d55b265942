package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var var_959:int = 0;
      
      private var _data:String = "";
      
      private var var_1519:int = -1;
      
      private var var_34:int = 0;
      
      private var _type:int = 0;
      
      private var var_957:int = 0;
      
      private var var_2347:String = "";
      
      private var var_1671:int = 0;
      
      private var _id:int = 0;
      
      private var var_193:Boolean = false;
      
      private var var_213:int = 0;
      
      private var var_1670:String = null;
      
      private var var_87:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_88:Number = 0;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_193)
         {
            _type = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_193)
         {
            _y = param1;
         }
      }
      
      public function get dir() : int
      {
         return var_213;
      }
      
      public function get extra() : int
      {
         return var_1519;
      }
      
      public function get state() : int
      {
         return var_34;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_193)
         {
            var_213 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_193)
         {
            var_87 = param1;
         }
      }
      
      public function set extra(param1:int) : void
      {
         if(!var_193)
         {
            var_1519 = param1;
         }
      }
      
      public function get z() : Number
      {
         return var_88;
      }
      
      public function set state(param1:int) : void
      {
         if(!var_193)
         {
            var_34 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function get expiryTime() : int
      {
         return var_1671;
      }
      
      public function get staticClass() : String
      {
         return var_1670;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!var_193)
         {
            var_1671 = param1;
         }
      }
      
      public function set data(param1:String) : void
      {
         if(!var_193)
         {
            _data = param1;
         }
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!var_193)
         {
            var_1670 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_193 = true;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_193)
         {
            var_959 = param1;
         }
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_193)
         {
            var_957 = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_193)
         {
            var_88 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return var_959;
      }
      
      public function get x() : Number
      {
         return var_87;
      }
      
      public function get sizeY() : int
      {
         return var_957;
      }
   }
}
