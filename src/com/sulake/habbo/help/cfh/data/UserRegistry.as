package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1129:int = 80;
       
      
      private var var_513:Map;
      
      private var var_731:String = "";
      
      private var var_1341:Array;
      
      public function UserRegistry()
      {
         var_513 = new Map();
         var_1341 = new Array();
         super();
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            _loc1_ = var_513.getValue(var_1341.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = var_731;
            }
         }
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(var_513.getValue(param1) != null)
         {
            var_513.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,var_731);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && var_731 == "")
         {
            var_1341.push(param1);
         }
         var_513.add(param1,_loc4_);
         purgeUserIndex();
      }
      
      public function getRegistry() : Map
      {
         return var_513;
      }
      
      public function unregisterRoom() : void
      {
         var_731 = "";
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(var_513.length > const_1129)
         {
            _loc1_ = var_513.getKey(0);
            var_513.remove(_loc1_);
         }
      }
      
      public function registerRoom(param1:String) : void
      {
         var_731 = param1;
         if(var_731 != "")
         {
            addRoomNameForMissing();
         }
      }
   }
}
