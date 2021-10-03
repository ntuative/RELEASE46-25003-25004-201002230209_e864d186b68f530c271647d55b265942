package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitMessageParser implements IMessageParser
   {
       
      
      private var _roomMessageTemplates:Array;
      
      private var var_1692:Boolean;
      
      private var var_1395:Array;
      
      private var var_1694:Boolean;
      
      private var var_1693:Boolean;
      
      private var var_1696:Boolean;
      
      private var var_157:Array;
      
      private var var_1690:Boolean;
      
      private var var_1691:Boolean;
      
      private var var_1394:Array;
      
      private var var_1697:Boolean;
      
      private var var_1695:Boolean;
      
      public function ModeratorInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get banPermission() : Boolean
      {
         return var_1695;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return var_1692;
      }
      
      public function get alertPermission() : Boolean
      {
         return var_1694;
      }
      
      public function get cfhPermission() : Boolean
      {
         return var_1690;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return _roomMessageTemplates;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return var_1691;
      }
      
      public function get messageTemplates() : Array
      {
         return var_1395;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         var_157 = [];
         var_1395 = [];
         _roomMessageTemplates = [];
         var_1394 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(!_loc2_.parse(param1))
            {
               return false;
            }
            var_157.push(_loc2_.issueData);
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1395.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1394.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         var_1690 = param1.readBoolean();
         var_1696 = param1.readBoolean();
         var_1694 = param1.readBoolean();
         var_1693 = param1.readBoolean();
         var_1695 = param1.readBoolean();
         var_1691 = param1.readBoolean();
         var_1692 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _roomMessageTemplates.push(param1.readString());
            _loc4_++;
         }
         var_1697 = param1.readBoolean();
         return true;
      }
      
      public function get kickPermission() : Boolean
      {
         return var_1693;
      }
      
      public function get offenceCategories() : Array
      {
         return var_1394;
      }
      
      public function get issues() : Array
      {
         return var_157;
      }
      
      public function get bobbaFilterPermission() : Boolean
      {
         return var_1697;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return var_1696;
      }
   }
}
