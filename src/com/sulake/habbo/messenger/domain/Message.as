package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_699:int = 2;
      
      public static const const_792:int = 6;
      
      public static const const_633:int = 1;
      
      public static const const_561:int = 3;
      
      public static const const_807:int = 4;
      
      public static const const_609:int = 5;
       
      
      private var var_2069:String;
      
      private var var_1020:int;
      
      private var var_1733:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_1020 = param2;
         var_1733 = param3;
         var_2069 = param4;
      }
      
      public function get time() : String
      {
         return var_2069;
      }
      
      public function get senderId() : int
      {
         return var_1020;
      }
      
      public function get messageText() : String
      {
         return var_1733;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
