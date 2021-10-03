package com.sulake.habbo.communication.messages.parser.room.action
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UseObjectMessageParser implements IMessageParser
   {
       
      
      private var _userId:int = 0;
      
      private var var_949:int;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      public function UseObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         _roomId = 0;
         _roomCategory = 0;
         _userId = 0;
         var_949 = 0;
         return true;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get itemType() : int
      {
         return var_949;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         _userId = param1.readInteger();
         var_949 = param1.readInteger();
         return true;
      }
   }
}
