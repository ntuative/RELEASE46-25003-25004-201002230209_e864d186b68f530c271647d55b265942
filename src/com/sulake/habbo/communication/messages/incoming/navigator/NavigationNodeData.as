package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class NavigationNodeData
   {
       
      
      private var var_1177:int;
      
      private var var_1408:String;
      
      public function NavigationNodeData(param1:int, param2:String)
      {
         super();
         var_1177 = param1;
         var_1408 = param2;
         Logger.log("READ NODE: " + var_1177 + ", " + var_1408);
      }
      
      public function get nodeName() : String
      {
         return var_1408;
      }
      
      public function get nodeId() : int
      {
         return var_1177;
      }
   }
}
