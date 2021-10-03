package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1214:IID;
      
      private var _isDisposed:Boolean;
      
      private var var_819:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         var_1214 = param1;
         var_819 = new Array();
         _isDisposed = false;
      }
      
      public function get receivers() : Array
      {
         return var_819;
      }
      
      public function get identifier() : IID
      {
         return var_1214;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            _isDisposed = true;
            var_1214 = null;
            while(false)
            {
               var_819.pop();
            }
            var_819 = null;
         }
      }
   }
}
