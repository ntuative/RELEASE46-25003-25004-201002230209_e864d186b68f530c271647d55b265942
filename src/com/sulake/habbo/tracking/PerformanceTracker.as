package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var var_1385:GarbageMonitor = null;
      
      private var var_1122:int = 0;
      
      private var var_1210:Boolean = false;
      
      private var var_1638:String = "";
      
      private var var_1384:String = "";
      
      private var var_320:Number = 0;
      
      private var var_1120:int = 10;
      
      private var var_2276:Array;
      
      private var var_617:int = 0;
      
      private var var_1123:int = 60;
      
      private var var_943:int = 0;
      
      private var var_942:int = 0;
      
      private var var_1907:String = "";
      
      private var var_1637:Number = 0;
      
      private var var_1121:int = 1000;
      
      private var var_1640:Boolean = true;
      
      private var var_1636:Number = 0.15;
      
      private var var_176:IHabboConfigurationManager = null;
      
      private var var_1639:String = "";
      
      private var var_1124:int = 0;
      
      private var _connection:IConnection = null;
      
      public function PerformanceTracker()
      {
         var_2276 = [];
         super();
         var_1384 = Capabilities.version;
         var_1638 = Capabilities.os;
         var_1210 = Capabilities.isDebugger;
         var_1639 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         var_1385 = new GarbageMonitor();
         updateGarbageMonitor();
         var_1122 = getTimer();
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_1385.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            var_1385.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function dispose() : void
      {
      }
      
      public function get averageUpdateInterval() : int
      {
         return var_320;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
      
      public function set reportInterval(param1:int) : void
      {
         var_1123 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
      
      public function get flashVersion() : String
      {
         return var_1384;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++var_942;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > var_1121)
         {
            ++var_943;
            _loc3_ = true;
         }
         else
         {
            ++var_617;
            if(var_617 <= 1)
            {
               var_320 = param1;
            }
            else
            {
               _loc4_ = Number(var_617);
               var_320 = var_320 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - var_1122 > var_1123 * 1000 && var_1124 < var_1120)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / var_320);
            _loc5_ = true;
            if(var_1640 && var_1124 > 0)
            {
               _loc6_ = differenceInPercents(var_1637,var_320);
               if(_loc6_ < var_1636)
               {
                  _loc5_ = false;
               }
            }
            var_1122 = getTimer();
            if(_loc5_ || _loc3_)
            {
               var_1637 = var_320;
               if(sendReport())
               {
                  ++var_1124;
               }
            }
         }
      }
      
      public function set reportLimit(param1:int) : void
      {
         var_1120 = param1;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         var_1121 = param1;
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,var_1639,var_1384,var_1638,var_1907,var_1210,_loc4_,_loc3_,var_942,var_320,var_943);
            _connection.send(_loc1_);
            var_942 = 0;
            var_320 = 0;
            var_617 = 0;
            var_943 = 0;
            return true;
         }
         return false;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_176 = param1;
         var_1123 = int(var_176.getKey("performancetest.interval","60"));
         var_1121 = int(var_176.getKey("performancetest.slowupdatelimit","1000"));
         var_1120 = int(var_176.getKey("performancetest.reportlimit","10"));
         var_1636 = Number(var_176.getKey("performancetest.distribution.deviancelimit.percent","10"));
         var_1640 = Boolean(int(var_176.getKey("performancetest.distribution.enabled","1")));
      }
   }
}
