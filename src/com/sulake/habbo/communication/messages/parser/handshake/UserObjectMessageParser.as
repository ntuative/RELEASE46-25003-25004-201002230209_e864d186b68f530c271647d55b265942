package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_540:String;
      
      private var var_2316:String;
      
      private var var_2315:int;
      
      private var var_2313:int;
      
      private var var_1307:String;
      
      private var var_1231:String;
      
      private var _name:String;
      
      private var var_458:int;
      
      private var var_796:int;
      
      private var var_2314:int;
      
      private var var_2006:int;
      
      private var var_2317:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2313;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1231;
      }
      
      public function get customData() : String
      {
         return this.var_2316;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_458;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2315;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2317;
      }
      
      public function get figure() : String
      {
         return this.var_540;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2006;
      }
      
      public function get sex() : String
      {
         return this.var_1307;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_540 = param1.readString();
         this.var_1307 = param1.readString();
         this.var_2316 = param1.readString();
         this.var_1231 = param1.readString();
         this.var_2314 = param1.readInteger();
         this.var_2317 = param1.readString();
         this.var_2315 = param1.readInteger();
         this.var_2313 = param1.readInteger();
         this.var_2006 = param1.readInteger();
         this.var_796 = param1.readInteger();
         this.var_458 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2314;
      }
      
      public function get respectLeft() : int
      {
         return this.var_796;
      }
   }
}
