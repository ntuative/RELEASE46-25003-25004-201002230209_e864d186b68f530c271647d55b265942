package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_685:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         var_685 = new ByteArray();
         var_685.writeShort(param1);
         var_685.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         var_685.position = 0;
         if(false)
         {
            _loc1_ = var_685.readShort();
            var_685.position = 0;
         }
         return _loc1_;
      }
   }
}
