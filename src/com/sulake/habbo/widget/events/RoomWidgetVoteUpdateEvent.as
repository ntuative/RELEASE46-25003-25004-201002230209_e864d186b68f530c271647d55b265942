package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_104:String = "RWPUE_VOTE_RESULT";
      
      public static const const_128:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1330:int;
      
      private var var_938:String;
      
      private var var_628:Array;
      
      private var var_1030:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_938 = param2;
         var_1030 = param3;
         var_628 = param4;
         if(var_628 == null)
         {
            var_628 = [];
         }
         var_1330 = param5;
      }
      
      public function get votes() : Array
      {
         return var_628.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1330;
      }
      
      public function get question() : String
      {
         return var_938;
      }
      
      public function get choices() : Array
      {
         return var_1030.slice();
      }
   }
}
