package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   
   public class ClubGiftInfoParser implements IMessageParser
   {
       
      
      private var var_954:int;
      
      private var var_1701:int;
      
      private var var_555:Array;
      
      public function ClubGiftInfoParser()
      {
         super();
      }
      
      public function get giftsAvailable() : int
      {
         return var_954;
      }
      
      public function get daysUntilNextGift() : int
      {
         return var_1701;
      }
      
      public function flush() : Boolean
      {
         var_555 = [];
         return true;
      }
      
      public function get offers() : Array
      {
         return var_555;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1701 = param1.readInteger();
         var_954 = param1.readInteger();
         var_555 = new Array();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_555.push(new CatalogPageMessageOfferData(param1));
            _loc3_++;
         }
         return true;
      }
   }
}
