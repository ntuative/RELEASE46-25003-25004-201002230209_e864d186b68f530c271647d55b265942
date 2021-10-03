package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1981:int;
      
      private var var_540:String;
      
      private var var_1643:int;
      
      private var var_1784:int;
      
      private var var_1985:int;
      
      private var var_2145:int;
      
      private var _nutrition:int;
      
      private var var_1171:int;
      
      private var var_2144:int;
      
      private var var_2146:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1987:int;
      
      private var var_2147:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1643;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_2145;
      }
      
      public function flush() : Boolean
      {
         var_1171 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_2144;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_2146;
      }
      
      public function get maxNutrition() : int
      {
         return var_2147;
      }
      
      public function get figure() : String
      {
         return var_540;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_1784;
      }
      
      public function get petId() : int
      {
         return var_1171;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1171 = param1.readInteger();
         _name = param1.readString();
         var_1643 = param1.readInteger();
         var_2144 = param1.readInteger();
         var_1985 = param1.readInteger();
         var_2146 = param1.readInteger();
         _energy = param1.readInteger();
         var_2145 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_2147 = param1.readInteger();
         var_540 = param1.readString();
         var_1784 = param1.readInteger();
         var_1987 = param1.readInteger();
         var_1981 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1985;
      }
      
      public function get ownerId() : int
      {
         return var_1987;
      }
      
      public function get age() : int
      {
         return var_1981;
      }
   }
}
