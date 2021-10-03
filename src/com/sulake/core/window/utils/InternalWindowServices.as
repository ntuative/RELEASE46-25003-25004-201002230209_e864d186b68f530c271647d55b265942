package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_119:DisplayObject;
      
      private var var_2320:uint;
      
      private var var_891:IWindowToolTipAgentService;
      
      private var var_892:IWindowMouseScalingService;
      
      private var var_223:IWindowContext;
      
      private var var_895:IWindowFocusManagerService;
      
      private var var_894:IWindowMouseListenerService;
      
      private var var_893:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2320 = 0;
         var_119 = param2;
         var_223 = param1;
         var_893 = new WindowMouseDragger(param2);
         var_892 = new WindowMouseScaler(param2);
         var_894 = new WindowMouseListener(param2);
         var_895 = new FocusManager(param2);
         var_891 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_892;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_895;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_891;
      }
      
      public function dispose() : void
      {
         if(var_893 != null)
         {
            var_893.dispose();
            var_893 = null;
         }
         if(var_892 != null)
         {
            var_892.dispose();
            var_892 = null;
         }
         if(var_894 != null)
         {
            var_894.dispose();
            var_894 = null;
         }
         if(var_895 != null)
         {
            var_895.dispose();
            var_895 = null;
         }
         if(var_891 != null)
         {
            var_891.dispose();
            var_891 = null;
         }
         var_223 = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_894;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_893;
      }
   }
}
