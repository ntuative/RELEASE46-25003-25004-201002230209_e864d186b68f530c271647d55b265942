package com.sulake.habbo.moderation
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   
   public class OpenUserInfo
   {
       
      
      private var _userId:int;
      
      private var var_48:ModerationManager;
      
      private var var_52:IFrameWindow;
      
      public function OpenUserInfo(param1:IFrameWindow, param2:ModerationManager, param3:IWindow, param4:int)
      {
         super();
         var_52 = param1;
         var_48 = param2;
         _userId = param4;
         param3.procedure = onClick;
      }
      
      private function onClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_48.windowTracker.show(new UserInfoFrameCtrl(var_48,_userId),var_52,false,false,true);
      }
   }
}
