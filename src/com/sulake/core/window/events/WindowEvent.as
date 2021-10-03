package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_327:String = "WE_CHILD_RESIZED";
      
      public static const const_1343:String = "WE_CLOSE";
      
      public static const const_1368:String = "WE_DESTROY";
      
      public static const const_141:String = "WE_CHANGE";
      
      public static const const_1344:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1597:String = "WE_PARENT_RESIZE";
      
      public static const const_93:String = "WE_UPDATE";
      
      public static const const_1217:String = "WE_MAXIMIZE";
      
      public static const const_479:String = "WE_DESTROYED";
      
      public static const const_834:String = "WE_UNSELECT";
      
      public static const const_1132:String = "WE_MAXIMIZED";
      
      public static const const_1481:String = "WE_UNLOCKED";
      
      public static const const_444:String = "WE_CHILD_REMOVED";
      
      public static const const_158:String = "WE_OK";
      
      public static const const_42:String = "WE_RESIZED";
      
      public static const const_1192:String = "WE_ACTIVATE";
      
      public static const const_246:String = "WE_ENABLED";
      
      public static const const_419:String = "WE_CHILD_RELOCATED";
      
      public static const const_1256:String = "WE_CREATE";
      
      public static const const_734:String = "WE_SELECT";
      
      public static const const_152:String = "";
      
      public static const const_1563:String = "WE_LOCKED";
      
      public static const const_1478:String = "WE_PARENT_RELOCATE";
      
      public static const const_1522:String = "WE_CHILD_REMOVE";
      
      public static const const_1576:String = "WE_CHILD_RELOCATE";
      
      public static const const_1549:String = "WE_LOCK";
      
      public static const const_187:String = "WE_FOCUSED";
      
      public static const const_703:String = "WE_UNSELECTED";
      
      public static const const_805:String = "WE_DEACTIVATED";
      
      public static const const_1317:String = "WE_MINIMIZED";
      
      public static const const_1566:String = "WE_ARRANGED";
      
      public static const const_1538:String = "WE_UNLOCK";
      
      public static const const_1433:String = "WE_ATTACH";
      
      public static const const_1181:String = "WE_OPEN";
      
      public static const const_1221:String = "WE_RESTORE";
      
      public static const const_1587:String = "WE_PARENT_RELOCATED";
      
      public static const const_1193:String = "WE_RELOCATE";
      
      public static const const_1458:String = "WE_CHILD_RESIZE";
      
      public static const const_1486:String = "WE_ARRANGE";
      
      public static const const_1286:String = "WE_OPENED";
      
      public static const const_1349:String = "WE_CLOSED";
      
      public static const const_1514:String = "WE_DETACHED";
      
      public static const const_1487:String = "WE_UPDATED";
      
      public static const const_1161:String = "WE_UNFOCUSED";
      
      public static const const_434:String = "WE_RELOCATED";
      
      public static const const_1219:String = "WE_DEACTIVATE";
      
      public static const const_210:String = "WE_DISABLED";
      
      public static const const_673:String = "WE_CANCEL";
      
      public static const const_688:String = "WE_ENABLE";
      
      public static const const_1182:String = "WE_ACTIVATED";
      
      public static const const_1336:String = "WE_FOCUS";
      
      public static const const_1447:String = "WE_DETACH";
      
      public static const const_1297:String = "WE_RESTORED";
      
      public static const const_1335:String = "WE_UNFOCUS";
      
      public static const const_51:String = "WE_SELECTED";
      
      public static const const_1302:String = "WE_PARENT_RESIZED";
      
      public static const const_1142:String = "WE_CREATED";
      
      public static const const_1531:String = "WE_ATTACHED";
      
      public static const const_1232:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1585:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1358:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1585 = param3;
         var_1358 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1358;
      }
      
      public function get related() : IWindow
      {
         return var_1585;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1358 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
