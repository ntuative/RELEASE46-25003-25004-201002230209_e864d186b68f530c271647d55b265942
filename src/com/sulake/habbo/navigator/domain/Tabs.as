package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_592:int = 6;
      
      public static const const_219:int = 5;
      
      public static const const_526:int = 2;
      
      public static const const_300:int = 9;
      
      public static const const_285:int = 4;
      
      public static const const_271:int = 2;
      
      public static const const_687:int = 4;
      
      public static const const_194:int = 8;
      
      public static const const_543:int = 7;
      
      public static const const_228:int = 3;
      
      public static const const_308:int = 1;
      
      public static const const_207:int = 5;
      
      public static const const_460:int = 12;
      
      public static const const_292:int = 1;
      
      public static const const_580:int = 11;
      
      public static const const_550:int = 3;
      
      public static const const_1505:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_370:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_370 = new Array();
         var_370.push(new Tab(_navigator,const_308,const_460,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_470));
         var_370.push(new Tab(_navigator,const_271,const_292,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_470));
         var_370.push(new Tab(_navigator,const_285,const_580,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_878));
         var_370.push(new Tab(_navigator,const_228,const_219,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_470));
         var_370.push(new Tab(_navigator,const_207,const_194,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_573));
         setSelectedTab(const_308);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_370)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_370)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_370)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_285;
      }
      
      public function get tabs() : Array
      {
         return var_370;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
