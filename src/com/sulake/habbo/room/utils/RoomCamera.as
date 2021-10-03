package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_342:Number = 0.5;
      
      private static const const_764:int = 3;
      
      private static const const_1083:Number = 1;
       
      
      private var var_1944:Boolean = false;
      
      private var var_1952:Boolean = false;
      
      private var var_1003:int = 0;
      
      private var var_258:Vector3d = null;
      
      private var var_1951:int = 0;
      
      private var var_1946:int = 0;
      
      private var var_1947:Boolean = false;
      
      private var var_1949:int = -2;
      
      private var var_1953:Boolean = false;
      
      private var var_1950:int = 0;
      
      private var var_1948:int = -1;
      
      private var var_396:Vector3d = null;
      
      private var var_1945:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_1951;
      }
      
      public function get targetId() : int
      {
         return var_1948;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_1950 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_1951 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_1944 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_1948 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_1952 = param1;
      }
      
      public function dispose() : void
      {
         var_396 = null;
         var_258 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_396 == null)
         {
            var_396 = new Vector3d();
         }
         var_396.assign(param1);
         var_1003 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_1949;
      }
      
      public function get screenHt() : int
      {
         return var_1945;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_1946 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_258;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_1945 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_1950;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_1944;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_1952;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_396 != null && var_258 != null)
         {
            ++var_1003;
            _loc2_ = Vector3d.dif(var_396,var_258);
            if(_loc2_.length <= const_342)
            {
               var_258 = var_396;
               var_396 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_342 * (const_764 + 1))
               {
                  _loc2_.mul(const_342);
               }
               else if(var_1003 <= const_764)
               {
                  _loc2_.mul(const_342);
               }
               else
               {
                  _loc2_.mul(const_1083);
               }
               var_258 = Vector3d.sum(var_258,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_1947 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_1946;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_1953 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_1949 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_258 != null)
         {
            return;
         }
         var_258 = new Vector3d();
         var_258.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_1947;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_1953;
      }
   }
}
