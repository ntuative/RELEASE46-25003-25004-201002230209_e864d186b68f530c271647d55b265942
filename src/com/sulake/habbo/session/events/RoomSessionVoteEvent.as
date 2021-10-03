package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_104:String = "RSPE_VOTE_RESULT";
      
      public static const const_128:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1330:int = 0;
      
      private var var_938:String = "";
      
      private var var_628:Array;
      
      private var var_1030:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_1030 = [];
         var_628 = [];
         super(param1,param2,param7,param8);
         var_938 = param3;
         var_1030 = param4;
         var_628 = param5;
         if(var_628 == null)
         {
            var_628 = [];
         }
         var_1330 = param6;
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
