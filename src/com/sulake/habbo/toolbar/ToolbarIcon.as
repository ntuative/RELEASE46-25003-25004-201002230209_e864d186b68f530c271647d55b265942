package com.sulake.habbo.toolbar
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.enum.WindowType;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ToolbarIcon
   {
       
      
      private var var_505:ToolbarIconGroup;
      
      private var var_1062:Boolean = false;
      
      private var var_2199:String;
      
      private var var_820:Number;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_1060:String = "-1";
      
      private var _window:IBitmapWrapperWindow;
      
      private var var_34:String = "-1";
      
      private var var_99:IRegionWindow;
      
      private var _bitmapData:BitmapData;
      
      private var var_723:String;
      
      private var var_2140:int;
      
      private var var_722:Timer;
      
      private var var_1558:Array;
      
      private var var_1059:ToolbarIconBouncer;
      
      private var _windowManager:IHabboWindowManager;
      
      private var _events:IEventDispatcher;
      
      private var var_2321:Array;
      
      private var var_273:ToolbarBarMenuAnimator;
      
      private var var_419:ToolbarIconAnimator;
      
      private var var_599:Array;
      
      private var var_900:Array;
      
      private var var_901:String = "-1";
      
      private var var_2374:Boolean = true;
      
      private var var_1061:Array;
      
      private var var_1329:Timer;
      
      private var var_2198:int;
      
      private var var_87:Number = 0;
      
      private var _y:Number = 0;
      
      public function ToolbarIcon(param1:ToolbarIconGroup, param2:IHabboWindowManager, param3:IAssetLibrary, param4:String, param5:IEventDispatcher, param6:ToolbarBarMenuAnimator)
      {
         var_599 = new Array();
         var_900 = new Array();
         var_2321 = new Array();
         var_1059 = new ToolbarIconBouncer(0.8,1);
         super();
         var_505 = param1;
         _windowManager = param2;
         _assetLibrary = param3;
         var_723 = param4;
         _events = param5;
         var_273 = param6;
         var_1329 = new Timer(40,40);
         var_1329.addEventListener(TimerEvent.TIMER,updateBouncer);
         var_99 = param2.createWindow("TOOLBAR_ICON_" + param4 + "_REGION","",WindowType.const_477,HabboWindowStyle.const_39,HabboWindowParam.const_38,new Rectangle(0,0,1,1),onMouseEvent) as IRegionWindow;
         var_99.background = true;
         var_99.alphaTreshold = 0;
         var_99.visible = false;
         _window = IBitmapWrapperWindow(param2.createWindow("TOOLBAR_ICON_" + param4,"",HabboWindowType.BITMAP_WRAPPER,HabboWindowStyle.const_39,HabboWindowParam.const_39,new Rectangle(0,0,1,1),onMouseEvent,0));
         var_99.addChild(_window);
         _window.addEventListener(WindowEvent.const_42,onWindowResized);
      }
      
      private function getStateObject(param1:String) : StateItem
      {
         return var_1558[var_1061.indexOf(param1)];
      }
      
      public function get windowOffsetFromIcon() : Number
      {
         return var_2198;
      }
      
      public function get iconId() : String
      {
         return var_723;
      }
      
      private function onWindowResized(param1:WindowEvent) : void
      {
         updateRegion();
      }
      
      public function changePosition(param1:Number) : void
      {
         var_820 = param1;
         updateRegion();
      }
      
      public function setIcon(param1:Boolean = true) : void
      {
         exists = param1;
         setAnimator();
      }
      
      public function set state(param1:String) : void
      {
         var_34 = param1;
         exists = true;
         setAnimator();
         setTooltip();
      }
      
      private function updateRegion() : void
      {
         if(var_99 == null || _window == null)
         {
            return;
         }
         var_99.width = _window.width;
         var_99.height = _window.height;
         var _loc1_:Boolean = false;
         if(_loc1_)
         {
            var_87 = (0 - 0) / 2;
            _y = var_820 + (0 - 0) / 2;
         }
         else
         {
            var_87 = var_820 + (0 - 0) / 2;
            _y = (0 - 0) / 2;
         }
         var_99.x = var_87;
         var_99.y = _y;
      }
      
      public function dispose() : void
      {
         if(_window != null)
         {
            _window.dispose();
            _window = null;
         }
         if(var_99 != null)
         {
            var_99.dispose();
            var_99 = null;
         }
         var_599 = null;
         var_900 = null;
         exists = false;
         _windowManager = null;
         _events = null;
         var_273 = null;
         var_419 = null;
         _bitmapData = null;
      }
      
      public function dockMenu(param1:String, param2:Array = null, param3:Boolean = false) : void
      {
         var _loc4_:* = null;
         if(var_599.indexOf(param1) < 0)
         {
            var_599.push(param1);
            _loc4_ = new MenuSettingsItem(param1,param2,param3);
            var_900.push(_loc4_);
         }
      }
      
      private function onMouseEvent(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc4_:* = null;
         if(!var_1062)
         {
            return;
         }
         var _loc3_:StateItem = getCurrentStateObject();
         switch(param1.type)
         {
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK:
               if(var_273)
               {
                  var_273.repositionWindow(var_723,true);
               }
               if(_events != null)
               {
                  _loc4_ = new HabboToolbarEvent(HabboToolbarEvent.const_57);
                  _loc4_.iconId = var_723;
                  _events.dispatchEvent(_loc4_);
               }
               break;
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER:
               if(false)
               {
                  if(_loc3_.hasStateOver)
                  {
                     state = _loc3_.stateOver;
                  }
                  else
                  {
                     state = var_1060;
                  }
               }
               break;
            case WindowMouseEvent.const_27:
               if(false)
               {
                  if(_loc3_.hasDefaultState)
                  {
                     state = _loc3_.defaultState;
                  }
                  else
                  {
                     state = var_901;
                  }
               }
         }
      }
      
      public function docksMenu(param1:String) : Boolean
      {
         return var_599.indexOf(param1) > -1;
      }
      
      public function menuLockedToIcon(param1:String) : Boolean
      {
         if(!docksMenu(param1))
         {
            return false;
         }
         var _loc2_:MenuSettingsItem = var_900[var_599.indexOf(param1)];
         return _loc2_.lockToIcon;
      }
      
      public function set exists(param1:Boolean) : void
      {
         var_1062 = param1;
         if(var_99 != null)
         {
            var_99.visible = var_1062;
         }
      }
      
      private function setTooltip() : void
      {
         if(var_99 == null)
         {
            return;
         }
         var _loc1_:StateItem = getCurrentStateObject();
         if(_loc1_ != null && _loc1_.tooltip != null)
         {
            var_99.toolTipCaption = "${toolbar.icon.tooltip." + _loc1_.tooltip + "}";
         }
         else
         {
            var_99.toolTipCaption = "${toolbar.icon.tooltip." + var_2199.toLowerCase() + "}";
         }
         var_99.toolTipDelay = 100;
      }
      
      public function animateWindowIn(param1:String, param2:IWindowContainer, param3:Number, param4:String, param5:Point) : void
      {
         if(var_273 != null)
         {
            var_273.animateWindowIn(this,param1,param2,var_723,param3,param4,getMenuYieldList(param1));
         }
      }
      
      private function updateAnimator(param1:Event) : void
      {
         if(var_419 != null && _window != null)
         {
            var_419.update(_window);
            if(var_419.hasNextState())
            {
               state = var_419.nextState;
            }
         }
      }
      
      public function defineFromXML(param1:XML) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var_1558 = new Array();
         var_1061 = new Array();
         var_2199 = param1.@id;
         var_2198 = int(param1.@window_offset_from_icon);
         var_2140 = int(param1.@window_margin);
         var _loc2_:XMLList = param1.elements("state");
         if(_loc2_.length() > 0)
         {
            if(param1.attribute("state_over").length() > 0)
            {
               var_1060 = param1.@state_over;
            }
            if(param1.attribute("state_default").length() > 0)
            {
               var_901 = param1.@state_default;
            }
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length())
            {
               _loc4_ = _loc2_[_loc3_];
               _loc5_ = new StateItem(_loc4_,param1.@id.toLowerCase());
               var_1061.push(_loc5_.id);
               var_1558.push(_loc5_);
               if(_loc3_ == 0)
               {
                  if(var_1060 == "-1")
                  {
                     var_1060 = _loc5_.id;
                  }
                  if(var_901 == "-1")
                  {
                     var_901 = _loc5_.id;
                  }
               }
               _loc3_++;
            }
         }
         var_34 = var_901;
      }
      
      public function setIconBitmapData(param1:BitmapData = null) : void
      {
         exists = true;
         _bitmapData = param1;
         setAnimator();
      }
      
      public function hideWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(var_273 != null)
         {
            var_273.hideWindow(param1,param2,var_723,param3);
         }
      }
      
      public function positionWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(var_273 != null)
         {
            var_273.positionWindow(this,param1,param2,var_723,param3,getMenuYieldList(param1));
         }
      }
      
      public function animateWindowOut(param1:String, param2:IWindowContainer, param3:String) : void
      {
         if(var_273 != null)
         {
            var_273.animateWindowOut(this,param1,param2,param3);
         }
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get exists() : Boolean
      {
         return var_1062;
      }
      
      private function updateBouncer(param1:Event) : void
      {
         if(var_1059 != null && _window != null)
         {
            var_1059.update();
            _window.y = var_1059.location;
         }
      }
      
      private function setAnimator() : void
      {
         if(var_722 != null)
         {
            var_722.stop();
            var_722 = null;
         }
         var _loc1_:StateItem = getCurrentStateObject();
         if(_loc1_ != null && var_1062)
         {
            if(_loc1_.frames == null)
            {
               return;
            }
            var_419 = new ToolbarIconAnimator(_loc1_,_assetLibrary,_window,var_87,_y,_bitmapData);
            if(false)
            {
               var_722 = new Timer(_loc1_.timer);
               var_722.addEventListener(TimerEvent.TIMER,updateAnimator);
               var_722.start();
            }
            if(_loc1_.bounce)
            {
               var_1059.reset(-7);
               var_1329.reset();
               var_1329.start();
            }
         }
         else
         {
            var_419 = null;
            _window.bitmap = null;
         }
      }
      
      public function get windowMargin() : Number
      {
         return var_2140 + var_505.windowMargin;
      }
      
      private function getCurrentStateObject() : StateItem
      {
         return getStateObject(var_34);
      }
      
      public function get window() : IWindow
      {
         return var_99;
      }
      
      public function get x() : Number
      {
         return var_87;
      }
      
      private function getMenuYieldList(param1:String) : Array
      {
         if(!docksMenu(param1))
         {
            return null;
         }
         var _loc2_:MenuSettingsItem = var_900[var_599.indexOf(param1)];
         return _loc2_.yieldList;
      }
      
      public function get group() : ToolbarIconGroup
      {
         return var_505;
      }
   }
}
