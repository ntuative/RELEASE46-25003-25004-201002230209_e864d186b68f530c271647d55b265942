package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1235:String = "WN_CREATED";
      
      public static const const_864:String = "WN_DISABLE";
      
      public static const const_850:String = "WN_DEACTIVATED";
      
      public static const const_811:String = "WN_OPENED";
      
      public static const const_987:String = "WN_CLOSED";
      
      public static const const_968:String = "WN_DESTROY";
      
      public static const const_1598:String = "WN_ARRANGED";
      
      public static const const_452:String = "WN_PARENT_RESIZED";
      
      public static const const_829:String = "WN_ENABLE";
      
      public static const const_998:String = "WN_RELOCATE";
      
      public static const const_889:String = "WN_FOCUS";
      
      public static const const_990:String = "WN_PARENT_RELOCATED";
      
      public static const const_418:String = "WN_PARAM_UPDATED";
      
      public static const const_726:String = "WN_PARENT_ACTIVATED";
      
      public static const const_213:String = "WN_RESIZED";
      
      public static const const_903:String = "WN_CLOSE";
      
      public static const const_972:String = "WN_PARENT_REMOVED";
      
      public static const const_232:String = "WN_CHILD_RELOCATED";
      
      public static const const_638:String = "WN_ENABLED";
      
      public static const const_235:String = "WN_CHILD_RESIZED";
      
      public static const const_833:String = "WN_MINIMIZED";
      
      public static const const_674:String = "WN_DISABLED";
      
      public static const const_226:String = "WN_CHILD_ACTIVATED";
      
      public static const const_388:String = "WN_STATE_UPDATED";
      
      public static const const_552:String = "WN_UNSELECTED";
      
      public static const const_375:String = "WN_STYLE_UPDATED";
      
      public static const const_1510:String = "WN_UPDATE";
      
      public static const const_407:String = "WN_PARENT_ADDED";
      
      public static const const_623:String = "WN_RESIZE";
      
      public static const const_621:String = "WN_CHILD_REMOVED";
      
      public static const const_1434:String = "";
      
      public static const const_1001:String = "WN_RESTORED";
      
      public static const const_291:String = "WN_SELECTED";
      
      public static const const_971:String = "WN_MINIMIZE";
      
      public static const const_858:String = "WN_FOCUSED";
      
      public static const const_1214:String = "WN_LOCK";
      
      public static const const_326:String = "WN_CHILD_ADDED";
      
      public static const const_946:String = "WN_UNFOCUSED";
      
      public static const const_454:String = "WN_RELOCATED";
      
      public static const const_874:String = "WN_DEACTIVATE";
      
      public static const const_1249:String = "WN_CRETAE";
      
      public static const const_819:String = "WN_RESTORE";
      
      public static const const_313:String = "WN_ACTVATED";
      
      public static const const_1339:String = "WN_LOCKED";
      
      public static const const_400:String = "WN_SELECT";
      
      public static const const_986:String = "WN_MAXIMIZE";
      
      public static const const_885:String = "WN_OPEN";
      
      public static const const_514:String = "WN_UNSELECT";
      
      public static const const_1517:String = "WN_ARRANGE";
      
      public static const const_1234:String = "WN_UNLOCKED";
      
      public static const const_1585:String = "WN_UPDATED";
      
      public static const const_978:String = "WN_ACTIVATE";
      
      public static const const_1321:String = "WN_UNLOCK";
      
      public static const const_900:String = "WN_MAXIMIZED";
      
      public static const const_908:String = "WN_DESTROYED";
      
      public static const const_905:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1585,cancelable);
      }
   }
}
