package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_88:Number = 0;
      
      private var var_213:int = 0;
      
      private var var_1863:int = 0;
      
      private var var_1864:Number = 0;
      
      private var var_1861:Number = 0;
      
      private var var_1860:Number = 0;
      
      private var var_1859:Number = 0;
      
      private var var_1862:Boolean = false;
      
      private var var_87:Number = 0;
      
      private var _id:int = 0;
      
      private var var_186:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_186 = [];
         super();
         _id = param1;
         var_87 = param2;
         _y = param3;
         var_88 = param4;
         var_1859 = param5;
         var_213 = param6;
         var_1863 = param7;
         var_1864 = param8;
         var_1861 = param9;
         var_1860 = param10;
         var_1862 = param11;
         var_186 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_88;
      }
      
      public function get dir() : int
      {
         return var_213;
      }
      
      public function get localZ() : Number
      {
         return var_1859;
      }
      
      public function get isMoving() : Boolean
      {
         return var_1862;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_1863;
      }
      
      public function get targetX() : Number
      {
         return var_1864;
      }
      
      public function get targetY() : Number
      {
         return var_1861;
      }
      
      public function get targetZ() : Number
      {
         return var_1860;
      }
      
      public function get x() : Number
      {
         return var_87;
      }
      
      public function get actions() : Array
      {
         return var_186.slice();
      }
   }
}
