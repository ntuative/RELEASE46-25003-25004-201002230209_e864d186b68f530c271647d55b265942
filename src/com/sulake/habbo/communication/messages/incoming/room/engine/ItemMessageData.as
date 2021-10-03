package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var var_88:Number = 0;
      
      private var _data:String = "";
      
      private var var_1519:int = 0;
      
      private var var_34:int = 0;
      
      private var _type:int = 0;
      
      private var _y:Number = 0;
      
      private var var_1607:Boolean = false;
      
      private var var_2347:String = "";
      
      private var _id:int = 0;
      
      private var var_193:Boolean = false;
      
      private var var_213:String = "";
      
      private var var_1608:int = 0;
      
      private var var_1605:int = 0;
      
      private var var_1606:int = 0;
      
      private var var_1609:int = 0;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         _id = param1;
         _type = param2;
         var_1607 = param3;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_193)
         {
            _y = param1;
         }
      }
      
      public function get isOldFormat() : Boolean
      {
         return var_1607;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_193)
         {
            _type = param1;
         }
      }
      
      public function get dir() : String
      {
         return var_213;
      }
      
      public function get state() : int
      {
         return var_34;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!var_193)
         {
            var_1606 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!var_193)
         {
            var_1608 = param1;
         }
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!var_193)
         {
            var_1605 = param1;
         }
      }
      
      public function set dir(param1:String) : void
      {
         if(!var_193)
         {
            var_213 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!var_193)
         {
            var_1609 = param1;
         }
      }
      
      public function set state(param1:int) : void
      {
         if(!var_193)
         {
            var_34 = param1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get localX() : Number
      {
         return var_1606;
      }
      
      public function set data(param1:String) : void
      {
         if(!var_193)
         {
            _data = param1;
         }
      }
      
      public function get wallX() : Number
      {
         return var_1608;
      }
      
      public function get wallY() : Number
      {
         return var_1605;
      }
      
      public function get localY() : Number
      {
         return var_1609;
      }
      
      public function setReadOnly() : void
      {
         var_193 = true;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_88;
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_193)
         {
            var_88 = param1;
         }
      }
   }
}
