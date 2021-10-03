package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var var_732:IWindowContainer;
      
      private var var_1076:ITextWindow;
      
      private var var_202:RoomSettingsCtrl;
      
      private var var_1349:IContainerButtonWindow;
      
      private var _window:IWindowContainer;
      
      private var _hideInfoTimer:Timer;
      
      private var var_1345:ITextWindow;
      
      private var var_354:IWindowContainer;
      
      private var var_2223:IWindowContainer;
      
      private var var_2224:ITextWindow;
      
      private var var_906:IWindowContainer;
      
      private var var_1569:IButtonWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_731:ITextWindow;
      
      private var var_1566:IWindowContainer;
      
      private var var_1343:IWindowContainer;
      
      private var var_907:ITextWindow;
      
      private var var_1075:ITextFieldWindow;
      
      private var var_310:IWindowContainer;
      
      private var var_909:ITextWindow;
      
      private var var_1567:IButtonWindow;
      
      private var var_1077:ITextWindow;
      
      private var var_2322:int;
      
      private var var_1346:IContainerButtonWindow;
      
      private var var_908:IWindowContainer;
      
      private var var_1348:ITextWindow;
      
      private var var_1344:IContainerButtonWindow;
      
      private var var_1568:ITextWindow;
      
      private var var_1565:IButtonWindow;
      
      private var var_875:TagRenderer;
      
      private var var_1596:ITextWindow;
      
      private var var_353:RoomEventViewCtrl;
      
      private var _navigator:HabboNavigator;
      
      private var var_733:ITextWindow;
      
      private var var_276:RoomThumbnailCtrl;
      
      private var var_1347:IContainerButtonWindow;
      
      private var var_2225:IWindowContainer;
      
      private var var_277:IWindowContainer;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_353 = new RoomEventViewCtrl(_navigator);
         var_202 = new RoomSettingsCtrl(_navigator,this,true);
         var_276 = new RoomThumbnailCtrl(_navigator);
         var_875 = new TagRenderer(_navigator);
         _navigator.roomSettingsCtrls.push(this.var_202);
         _hideInfoTimer = new Timer(6000,1);
         _hideInfoTimer.addEventListener(TimerEvent.TIMER,hideInfo);
      }
      
      public function backToRoomSettings() : void
      {
         this.var_202.active = true;
         this.var_353.active = false;
         this.var_276.active = false;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(false)
         {
            return;
         }
         var_1569.visible = param1 == null && _navigator.data.currentRoomOwner;
         var_1565.visible = param1 != null && (_navigator.data.currentRoomOwner || _navigator.data.eventMod);
         var_1566.visible = Util.hasVisibleChildren(var_1566);
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_731.text = param1.roomName;
         var_731.height = NaN;
         _ownerName.text = param1.ownerName;
         var_907.text = param1.description;
         var_875.refreshTags(var_354,param1.tags);
         var_907.visible = false;
         if(param1.description != "")
         {
            var_907.height = NaN;
            var_907.visible = true;
         }
         var _loc3_:* = _navigator.data.currentRoomRating == -1;
         _navigator.refreshButton(var_354,"thumb_up",_loc3_,onThumbUp,0);
         _navigator.refreshButton(var_354,"thumb_down",_loc3_,onThumbDown,0);
         var_2224.visible = _loc3_;
         var_909.visible = !_loc3_;
         var_1568.visible = !_loc3_;
         var_1568.text = "" + _navigator.data.currentRoomRating;
         _navigator.refreshButton(var_354,"home",param2,null,0);
         _navigator.refreshButton(var_354,"favourite",!param2 && _navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(var_354,["room_name","owner_name_cont","tags","room_desc","rating_cont"],var_731.y,0);
         var_354.visible = true;
         var_354.height = Util.getLowestPoint(var_354);
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!_navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      public function dispose() : void
      {
         if(_hideInfoTimer)
         {
            _hideInfoTimer.removeEventListener(TimerEvent.TIMER,hideInfo);
            _hideInfoTimer.reset();
            _hideInfoTimer = null;
         }
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function hideInfo(param1:Event) : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_480,HabboToolbarIconEnum.ROOMINFO,_window,false));
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(_navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(_navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            _navigator.send(new AddFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(_navigator.data.enteredGuestRoom == null || false || false)
         {
            return;
         }
         var_1567.visible = _navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = _navigator.data.isCurrentRoomFavourite();
         var_1349.visible = _navigator.data.canAddFavourite && !_loc2_;
         var_1347.visible = _navigator.data.canAddFavourite && _loc2_;
         var_1346.visible = _navigator.data.canEditRoomSettings && !param1;
         var_1344.visible = _navigator.data.canEditRoomSettings && param1;
         var_1343.visible = Util.hasVisibleChildren(var_1343);
      }
      
      public function open(param1:Boolean) : void
      {
         this._hideInfoTimer.reset();
         this.var_353.active = false;
         this.var_202.active = false;
         this.var_276.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(_navigator.data.enteredGuestRoom.flatId);
         }
         refresh();
         _window.visible = true;
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_45,HabboToolbarIconEnum.ROOMINFO,_window,false));
         _window.parent.activate();
         _window.activate();
         if(!param1)
         {
            this._hideInfoTimer.start();
         }
      }
      
      public function toggle() : void
      {
         this._hideInfoTimer.reset();
         this.var_353.active = false;
         this.var_202.active = false;
         this.var_276.active = false;
         refresh();
         if(true)
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_45,HabboToolbarIconEnum.ROOMINFO,_window,false));
            _window.parent.activate();
         }
         else
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_480,HabboToolbarIconEnum.ROOMINFO,_window,false));
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(var_310);
         var_310.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = _navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _navigator.data.settings != null && _loc1_ != null && _loc1_.flatId == _navigator.data.settings.homeRoomId;
         refreshRoomDetails(_loc1_,_loc2_);
         refreshPublicSpaceDetails(_navigator.data.enteredPublicSpace);
         refreshRoomButtons(_loc2_);
         this.var_202.refresh(var_310);
         this.var_276.refresh(var_310);
         Util.moveChildrenToColumn(var_310,["room_details","room_buttons"],0,2);
         var_310.height = Util.getLowestPoint(var_310);
         var_310.visible = true;
         Logger.log("XORP: undefined, undefined, undefined, undefined, undefined");
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         hideInfo(null);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_1075.setSelection(0,var_1075.text.length);
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + _navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + _navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = _navigator.configuration.getKey("user.hash","");
         _navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         _navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         _navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return _navigator.getText("navigator.embed.src");
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(var_277);
         var _loc1_:RoomEventData = _navigator.data.roomEventData;
         refreshEventDetails(_loc1_);
         refreshEventButtons(_loc1_);
         this.var_353.refresh(var_277);
         if(Util.hasVisibleChildren(var_277) && !this.var_276.active)
         {
            Util.moveChildrenToColumn(var_277,["event_details","event_buttons"],0,2);
            var_277.height = Util.getLowestPoint(var_277);
            var_277.visible = true;
         }
         else
         {
            var_277.visible = false;
         }
         Logger.log("EVENT: undefined, undefined");
      }
      
      public function startEventEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_353.active = true;
         this.var_202.active = false;
         this.var_276.active = false;
         this.reload();
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         _navigator.send(new DeleteFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         _hideInfoTimer.reset();
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_1076.text = _navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         var_1076.height = NaN;
         var_1345.text = _navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         var_1345.height = NaN;
         Util.moveChildrenToColumn(var_732,["public_space_name","public_space_desc"],var_1076.y,0);
         var_732.visible = true;
         var_732.height = Math.max(86,Util.getLowestPoint(var_732));
      }
      
      public function reload() : void
      {
         if(_window != null && false)
         {
            refresh();
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = _window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = _navigator.configuration.getKey("embed.showInRoomInfo","NoSuchFlatMessageParser") == "true";
         if(_loc1_ && true && true && true)
         {
            var_908.visible = true;
            var_1075.text = this.getEmbedData();
         }
         else
         {
            var_908.visible = false;
         }
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this._hideInfoTimer.reset();
         this.var_202.load(param1);
         this.var_202.active = true;
         this.var_353.active = false;
         this.var_276.active = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_202.active = false;
         this.var_353.active = false;
         this.var_276.active = true;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      private function prepareWindow() : void
      {
         if(_window != null)
         {
            return;
         }
         _window = IWindowContainer(_navigator.getXmlWindow("iro_room_details"));
         _window.setParamFlag(HabboWindowParam.const_64,false);
         _window.setParamFlag(HabboWindowParam.const_1240,true);
         _window.visible = false;
         var_310 = IWindowContainer(find("room_info"));
         var_354 = IWindowContainer(find("room_details"));
         var_732 = IWindowContainer(find("public_space_details"));
         var_2225 = IWindowContainer(find("owner_name_cont"));
         var_2223 = IWindowContainer(find("rating_cont"));
         var_1343 = IWindowContainer(find("room_buttons"));
         var_731 = ITextWindow(find("room_name"));
         var_1076 = ITextWindow(find("public_space_name"));
         _ownerName = ITextWindow(find("owner_name"));
         var_907 = ITextWindow(find("room_desc"));
         var_1345 = ITextWindow(find("public_space_desc"));
         var_1077 = ITextWindow(find("owner_caption"));
         var_909 = ITextWindow(find("rating_caption"));
         var_2224 = ITextWindow(find("rate_caption"));
         var_1568 = ITextWindow(find("rating_txt"));
         var_277 = IWindowContainer(find("event_info"));
         var_906 = IWindowContainer(find("event_details"));
         var_1566 = IWindowContainer(find("event_buttons"));
         var_1596 = ITextWindow(find("event_name"));
         var_733 = ITextWindow(find("event_desc"));
         var_1349 = IContainerButtonWindow(find("add_favourite_button"));
         var_1347 = IContainerButtonWindow(find("rem_favourite_button"));
         var_1346 = IContainerButtonWindow(find("make_home_button"));
         var_1344 = IContainerButtonWindow(find("unmake_home_button"));
         var_1567 = IButtonWindow(find("room_settings_button"));
         var_1569 = IButtonWindow(find("create_event_button"));
         var_1565 = IButtonWindow(find("edit_event_button"));
         var_908 = IWindowContainer(find("embed_info"));
         var_1348 = ITextWindow(find("embed_info_txt"));
         var_1075 = ITextFieldWindow(find("embed_src_txt"));
         Util.setProcDirectly(var_1349,onAddFavouriteClick);
         Util.setProcDirectly(var_1347,onRemoveFavouriteClick);
         Util.setProcDirectly(var_1567,onRoomSettingsClick);
         Util.setProcDirectly(var_1346,onMakeHomeClick);
         Util.setProcDirectly(var_1344,onUnmakeHomeClick);
         Util.setProcDirectly(var_1569,onEventSettingsClick);
         Util.setProcDirectly(var_1565,onEventSettingsClick);
         Util.setProcDirectly(var_1075,onEmbedSrcClick);
         _navigator.refreshButton(var_1349,"favourite",true,null,0);
         _navigator.refreshButton(var_1347,"favourite",true,null,0);
         _navigator.refreshButton(var_1346,"home",true,null,0);
         _navigator.refreshButton(var_1344,"home",true,null,0);
         _window.findChildByName("close").procedure = onCloseButtonClick;
         Util.setProcDirectly(var_310,onHover);
         Util.setProcDirectly(var_277,onHover);
         var_1077.width = var_1077.textWidth;
         Util.moveChildrenToRow(var_2225,["owner_caption","owner_name"],var_1077.x,var_1077.y,3);
         var_909.width = var_909.textWidth;
         Util.moveChildrenToRow(var_2223,["rating_caption","rating_txt"],var_909.x,var_909.y,3);
         var_1348.height = NaN;
         Util.moveChildrenToColumn(var_908,["embed_info_txt","embed_src_txt"],var_1348.y,2);
         var_908.height = Util.getLowestPoint(var_908) + 5;
         var_2322 = NaN;
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || false)
         {
            return;
         }
         var_1596.text = param1.eventName;
         var_733.text = param1.eventDescription;
         var_875.refreshTags(var_906,[_navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         var_733.visible = false;
         if(param1.eventDescription != "")
         {
            var_733.height = NaN;
            var_733.y = Util.getLowestPoint(var_906) + 2;
            var_733.visible = true;
         }
         var_906.visible = true;
         var_906.height = Util.getLowestPoint(var_906);
      }
      
      private function refresh() : void
      {
         prepareWindow();
         refreshRoom();
         refreshEvent();
         refreshEmbed();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info"],0,2);
         _window.height = Util.getLowestPoint(_window);
         _window.y = _window.desktop.height - 0 - 5;
         Logger.log("MAIN: undefined, undefined, undefined");
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.roomEventData == null)
         {
            if(_navigator.data.currentRoomOwner)
            {
               _navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            startEventEdit();
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         refresh();
      }
      
      public function close() : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_837,HabboToolbarIconEnum.ROOMINFO,_window,false));
         if(_window == null)
         {
            return;
         }
         this._window.visible = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
   }
}
