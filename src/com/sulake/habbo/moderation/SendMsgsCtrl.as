package com.sulake.habbo.moderation
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IDropMenuWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.moderator.ModMessageMessageComposer;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import flash.events.Event;
   
   public class SendMsgsCtrl implements IDisposable, TrackedWindow
   {
       
      
      private var var_1275:String;
      
      private var _disposed:Boolean;
      
      private var var_1454:String;
      
      private var var_1276:int;
      
      private var var_48:ModerationManager;
      
      private var var_808:IDropMenuWindow;
      
      private var var_406:ITextFieldWindow;
      
      private var var_52:IFrameWindow;
      
      private var var_293:Boolean = true;
      
      public function SendMsgsCtrl(param1:ModerationManager, param2:int, param3:String, param4:String)
      {
         super();
         var_48 = param1;
         var_1276 = param2;
         var_1454 = param3;
         var_1275 = param4;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_187)
         {
            return;
         }
         if(!var_293)
         {
            return;
         }
         var_406.text = "";
         var_293 = false;
      }
      
      public function getFrame() : IFrameWindow
      {
         return var_52;
      }
      
      public function getId() : String
      {
         return var_1454;
      }
      
      private function onSendMessageButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Sending message...");
         if(var_293 || false)
         {
            var_48.windowManager.alert("Alert","You must input a message to the user",0,onAlertClose);
            return;
         }
         var_48.connection.send(new ModMessageMessageComposer(var_1276,var_406.text,var_1275));
         this.dispose();
      }
      
      public function show() : void
      {
         var_52 = IFrameWindow(var_48.getXmlWindow("send_msgs"));
         var_52.caption = "Msg To: " + var_1454;
         var_52.findChildByName("send_message_but").procedure = onSendMessageButton;
         var_406 = ITextFieldWindow(var_52.findChildByName("message_input"));
         var_406.procedure = onInputClick;
         var_808 = IDropMenuWindow(var_52.findChildByName("msgTemplatesSelect"));
         prepareMsgSelect(var_808);
         var_808.procedure = onSelectTemplate;
         var _loc1_:IWindow = var_52.findChildByTag("close");
         _loc1_.procedure = onClose;
         var_52.visible = true;
      }
      
      private function prepareMsgSelect(param1:IDropMenuWindow) : void
      {
         Logger.log("MSG TEMPLATES: " + var_48.initMsg.messageTemplates.length);
         param1.populate(var_48.initMsg.messageTemplates);
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_52 != null)
         {
            var_52.destroy();
            var_52 = null;
         }
         var_808 = null;
         var_406 = null;
         var_48 = null;
      }
      
      private function onSelectTemplate(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_51)
         {
            return;
         }
         var _loc3_:String = var_48.initMsg.messageTemplates["null"];
         if(_loc3_ != null)
         {
            var_293 = false;
            var_406.text = _loc3_;
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      private function onClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         dispose();
      }
      
      private function onAlertClose(param1:IAlertDialog, param2:Event) : void
      {
         param1.dispose();
      }
      
      public function getType() : int
      {
         return WindowTracker.const_1208;
      }
   }
}
