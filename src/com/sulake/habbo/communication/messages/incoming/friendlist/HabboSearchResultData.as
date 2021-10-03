package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2307:Boolean;
      
      private var var_2309:int;
      
      private var var_2310:Boolean;
      
      private var var_1450:String;
      
      private var var_1231:String;
      
      private var var_1661:int;
      
      private var var_1894:String;
      
      private var var_2308:String;
      
      private var var_1895:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1661 = param1.readInteger();
         this.var_1450 = param1.readString();
         this.var_1894 = param1.readString();
         this.var_2307 = param1.readBoolean();
         this.var_2310 = param1.readBoolean();
         param1.readString();
         this.var_2309 = param1.readInteger();
         this.var_1895 = param1.readString();
         this.var_2308 = param1.readString();
         this.var_1231 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1231;
      }
      
      public function get avatarName() : String
      {
         return this.var_1450;
      }
      
      public function get avatarId() : int
      {
         return this.var_1661;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2307;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2308;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_1895;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2310;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_1894;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2309;
      }
   }
}
