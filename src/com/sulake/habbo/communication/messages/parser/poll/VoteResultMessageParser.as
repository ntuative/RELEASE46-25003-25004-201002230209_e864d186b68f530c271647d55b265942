package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1330:int;
      
      private var var_938:String;
      
      private var var_628:Array;
      
      private var var_1030:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_628.slice();
      }
      
      public function flush() : Boolean
      {
         var_938 = "";
         var_1030 = [];
         var_628 = [];
         var_1330 = 0;
         return true;
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
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_938 = param1.readString();
         var_1030 = [];
         var_628 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_1030.push(param1.readString());
            var_628.push(param1.readInteger());
            _loc3_++;
         }
         var_1330 = param1.readInteger();
         return true;
      }
   }
}
