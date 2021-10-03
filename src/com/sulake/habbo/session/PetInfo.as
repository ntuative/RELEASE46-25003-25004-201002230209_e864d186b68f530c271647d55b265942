package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1643:int;
      
      private var var_1784:int;
      
      private var var_1985:int;
      
      private var var_1983:int;
      
      private var _nutrition:int;
      
      private var var_1171:int;
      
      private var var_1982:int;
      
      private var var_1984:int;
      
      private var _energy:int;
      
      private var var_1981:int;
      
      private var var_1986:int;
      
      private var _ownerName:String;
      
      private var var_1987:int;
      
      public function PetInfo()
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
      
      public function set respect(param1:int) : void
      {
         var_1784 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         _energy = param1;
      }
      
      public function set level(param1:int) : void
      {
         var_1643 = param1;
      }
      
      public function get petId() : int
      {
         return var_1171;
      }
      
      public function get experienceMax() : int
      {
         return var_1984;
      }
      
      public function get nutritionMax() : int
      {
         return var_1983;
      }
      
      public function set levelMax(param1:int) : void
      {
         var_1982 = param1;
      }
      
      public function get ownerId() : int
      {
         return var_1987;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function set petId(param1:int) : void
      {
         var_1171 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         _nutrition = param1;
      }
      
      public function get energyMax() : int
      {
         return var_1986;
      }
      
      public function get respect() : int
      {
         return var_1784;
      }
      
      public function get levelMax() : int
      {
         return var_1982;
      }
      
      public function set ownerName(param1:String) : void
      {
         _ownerName = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         var_1984 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         var_1985 = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         var_1983 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         var_1987 = param1;
      }
      
      public function get experience() : int
      {
         return var_1985;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function set energyMax(param1:int) : void
      {
         var_1986 = param1;
      }
      
      public function set age(param1:int) : void
      {
         var_1981 = param1;
      }
      
      public function get age() : int
      {
         return var_1981;
      }
   }
}
