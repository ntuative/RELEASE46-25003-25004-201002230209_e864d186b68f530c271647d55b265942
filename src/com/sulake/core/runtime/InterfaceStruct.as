package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_382:uint;
      
      private var var_966:IUnknown;
      
      private var var_1167:String;
      
      private var var_967:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_967 = param1;
         var_1167 = getQualifiedClassName(var_967);
         var_966 = param2;
         var_382 = 0;
      }
      
      public function get iid() : IID
      {
         return var_967;
      }
      
      public function get disposed() : Boolean
      {
         return var_966 == null;
      }
      
      public function get references() : uint
      {
         return var_382;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_382) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_966;
      }
      
      public function get iis() : String
      {
         return var_1167;
      }
      
      public function reserve() : uint
      {
         return ++var_382;
      }
      
      public function dispose() : void
      {
         var_967 = null;
         var_1167 = null;
         var_966 = null;
         var_382 = 0;
      }
   }
}
